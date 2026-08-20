# Steam Nexus App Builder review

Source export: `apex_export/f94107_full_export.sql`

## Export summary

- Application: 94107, `Steam Nexus`
- APEX export version: 26.1.3
- Export type: full application export
- Pages: 18
- Page processes: 18
- Dynamic actions: 2
- Validations: 2
- Authentication schemes: 2
- Authorization schemes: 2
- Shared LOVs: 4
- Supporting Objects are marked as included, but no database install scripts were found in the export.

## App Builder objects found

### Application items and computations

- `APP_ADMIN_HASH`
- `G_USER_ID`
- `APP_ADMIN_HASH` is computed on new session with `STANDARD_HASH('admin' || to_char(sysdate, 'YYMMDD'), 'SHA256')`.

### Security

- Authentication `App Authentication` uses `PKG_USER_ACCOUNT.my_authentication`.
- Authorization `Administration` returns true only when `APP_USER = 'ADMIN'`.
- Authorization `USER_ONLY` returns true when session item `G_USER_ID` is not null.

### Package calls from pages

- `PKG_USER_ACCOUNT.my_authentication`
- `pkg_user_account.get_user_game_count`
- `pkg_user_account.get_total_spent`
- `pkg_achievements.get_user_achievement_count`
- `pkg_achievements.get_player_tier`
- `pkg_achievements.get_achievement_progress`
- `pkg_achievements.get_achievement_tier`
- `pkg_library_games.recommend_game`
- `pkg_library_games.get_game_popularity`
- `pkg_library_games.remove_game_from_library`
- `pkg_store_purchase.can_user_buy_game`
- `pkg_store_purchase.purchase_game`
- `pkg_store_purchase.refund_purchase`

### APEX collection usage

- The shopping cart is stored in APEX collection `CART`.
- This is not a schema object and will not appear in Object Browser.
- Page 30 adds/buys one game.
- Page 40 ensures, displays, clears, removes from, and checks out the cart.

## Page process inventory

- Page 4 `LOAD_G_USER_ID`: `BEFORE_HEADER`, PL/SQL, loads `G_USER_ID` from `USERS`.
- Page 15 `Game Details`: native form init for `GAMES`.
- Page 30 `Game Detail`: `ADD_TO_CART`, PL/SQL, uses `CART` collection and `pkg_store_purchase.can_user_buy_game`.
- Page 30 `Game Detail`: `BUY_NOW`, PL/SQL, calls `pkg_store_purchase.purchase_game`.
- Page 40 `Cart`: `CHECKOUT`, PL/SQL, builds `pkg_store_purchase.t_id_list` from `APEX_COLLECTIONS`.
- Page 40 `Cart`: `CLEAR_CART`, PL/SQL, truncates `CART`.
- Page 40 `Cart`: `ENSURE_CART`, PL/SQL, creates `CART` when missing.
- Page 40 `Cart`: `REMOVE`, PL/SQL, deletes one collection member.
- Page 50 `My Library`: `REMOVE_GAME`, PL/SQL, calls `pkg_library_games.remove_game_from_library`.
- Page 70 `Profile`: native form init and native form DML for `USERS`.
- Page 80 `Reviews`: native form init and native form DML for `REVIEWS`.
- Page 90 `Purchases`: `NewREFUND`, PL/SQL, calls `pkg_store_purchase.refund_purchase`.
- Page 9999 `Login Page`: username cookie process, APEX authentication login API, and username cookie setter.

## Required App Builder fixes

1. Move `LOAD_G_USER_ID` from page 4 to a global place.

   Current export creates it as a page 4 process only. Most pages depend on `:G_USER_ID`, so this should be a Page 0 `Before Header` process or an application process that runs before page rendering.

   Suggested PL/SQL:

   ```sql
   BEGIN
       IF :APP_USER IS NOT NULL
          AND UPPER(:APP_USER) <> 'ADMIN' THEN
           SELECT user_id
             INTO :G_USER_ID
             FROM users
            WHERE UPPER(username) = UPPER(:APP_USER);
       ELSE
           :G_USER_ID := NULL;
       END IF;
   EXCEPTION
       WHEN NO_DATA_FOUND THEN
           :G_USER_ID := NULL;
   END;
   ```

2. Fix Profile page source filters.

   Page 70 has two `USERS` form regions with `USER_ID = :APP_USER`. `APP_USER` is the username, not the numeric user id. Change both filters to:

   ```sql
   USER_ID = :G_USER_ID
   ```

3. Restrict admin pages.

   These pages look administrative but do not have the `Administration` authorization in the export:

   - Page 13 `Admin Dashboard`
   - Page 14 `Game management`
   - Page 15 `Game Details`

4. Fix or retire page 60 `Transaction history`.

   Page 60 has no authorization and its report reads the whole `PURCHASES` table. Either make it admin-only, or filter it with:

   ```sql
   USER_ID = :G_USER_ID
   ```

   Page 90 already has a user-filtered purchases report and refund action.

5. Secure page 80 `Reviews`.

   Page 80 has no `USER_ONLY` authorization and uses native DML directly on `REVIEWS`. Add `USER_ONLY`, set `P80_USER_ID := :G_USER_ID` before submit, and add a server-side validation that the user owns the game:

   ```sql
   EXISTS (
       SELECT 1
         FROM library
        WHERE user_id = :G_USER_ID
          AND game_id = :P80_GAME_ID
   )
   ```

   A stricter option is to replace native DML insert with `pkg_library_games.write_review`.

6. Hide password hashes from admin/user UI.

   Page 8 uses `select * from users` and displays `PASSWORD_HASH`. Page 70 also exposes `P70_PASSWORD_HASH`. Prefer a password-change process that hashes the new password through `PKG_USER_ACCOUNT`, and hide the stored hash.

7. Remove page 4 from navigation after moving `LOAD_G_USER_ID`.

   Page 4 is a helper page and should not be a visible navigation destination.

## Schema/package status against App Builder

- The compile-ready package layer already provides the package entry points used by the app export.
- The explicit sequence layer is still useful because older/raw APEX PL/SQL can reference `*_SEQ`.
- No additional Object Browser objects are needed from this export.
- The remaining work is App Builder configuration cleanup and a real install/import compile check in Oracle APEX.
