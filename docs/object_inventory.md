# Object Inventory

## Database Objects

| Type | Count | Location |
|---|---:|---|
| Application tables | 19 | `database/objects/01_schema_compile_ready.sql` |
| APEX helper tables | 1 | `HTMLDB_PLAN_TABLE`, not installed by fresh script |
| Indexes | 8 | `database/raw/06_indexes_from_apex.sql` |
| Sequences | 9 | `database/objects/14_sequences_compile_ready.sql` |
| Packages | 5 | `database/objects/04_packages_compile_ready.sql` |
| Standalone functions | 18 | `database/objects/08_functions_compile_ready.sql` |
| Standalone procedures | 19 | `database/objects/10_procedures_compile_ready.sql` |
| Final triggers | 8 | `database/objects/12_triggers_compile_ready.sql` |
| Draft views | 7 | `database/optional/05_views_draft.sql` |

## Application Export

| Item | Count |
|---|---:|
| APEX application id | 94107 |
| APEX pages | 18 |
| Page processes | 18 |
| Dynamic actions | 2 |
| Validations | 2 |
| Authentication schemes | 2 |
| Authorization schemes | 2 |
| Shared LOVs | 4 |

Source: `apex_export/f94107_full_export.sql`.

## Package API Used By App Builder

1. `PKG_USER_ACCOUNT.my_authentication`.
2. `PKG_USER_ACCOUNT.get_user_game_count`.
3. `PKG_USER_ACCOUNT.get_total_spent`.
4. `PKG_ACHIEVEMENTS.get_user_achievement_count`.
5. `PKG_ACHIEVEMENTS.get_player_tier`.
6. `PKG_ACHIEVEMENTS.get_achievement_progress`.
7. `PKG_ACHIEVEMENTS.get_achievement_tier`.
8. `PKG_LIBRARY_GAMES.recommend_game`.
9. `PKG_LIBRARY_GAMES.get_game_popularity`.
10. `PKG_LIBRARY_GAMES.remove_game_from_library`.
11. `PKG_STORE_PURCHASE.can_user_buy_game`.
12. `PKG_STORE_PURCHASE.purchase_game`.
13. `PKG_STORE_PURCHASE.refund_purchase`.

## Required APEX Fixes

1. Move `LOAD_G_USER_ID` from page 4 to Page 0 or a global before-header process.
2. Change Profile filters from `USER_ID = :APP_USER` to `USER_ID = :G_USER_ID`.
3. Add `Administration` authorization to pages 13, 14, and 15.
4. Secure page 60 `Transaction history` or filter it by `USER_ID = :G_USER_ID`.
5. Add `USER_ONLY` authorization and owned-game validation to page 80 `Reviews`.
6. Hide `PASSWORD_HASH` on pages 8 and 70.
7. Remove page 4 from visible navigation after moving the process.

## Known Schema Notes

1. `WALLETS` and `PURCHASES_ITEM` missing visible FKs in the pasted Object Browser DDL; patch script adds them.
2. Tables use identity columns; explicit `*_SEQ` objects are preserved for compatibility.
3. Raw `TRG_CHECK_ACHIEVEMENT` is not installed. The primary key already handles duplicates.
4. No real Object Browser views were provided.
