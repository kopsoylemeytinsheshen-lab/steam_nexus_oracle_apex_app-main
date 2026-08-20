# Install Order

## Clean Install

1. Connect as the application parsing schema.
2. Run `database/install/00_install_fresh.sql`.
3. Import `apex_export/f94107_full_export.sql`.
4. Apply App Builder fixes from `docs/app_builder_review.md`.
5. Run `database/install/99_check_invalid_objects.sql`.
6. Load seed data only after column names are checked.

## Existing APEX Schema

1. Keep current Object Browser tables.
2. Run `database/install/00_patch_existing_apex.sql`.
3. Import or re-import `apex_export/f94107_full_export.sql` if the app is not current.
4. Apply App Builder fixes from `docs/app_builder_review.md`.
5. Run `database/install/99_check_invalid_objects.sql`.

## Manual SQL Workshop Order

Use this order if nested script calls are not supported by SQL Workshop.

1. `database/objects/01_schema_compile_ready.sql` for clean install only.
2. `database/objects/02_schema_patches_compile_ready.sql` for existing schema only.
3. `database/objects/14_sequences_compile_ready.sql`.
4. `database/objects/12_triggers_compile_ready.sql`.
5. `database/objects/08_functions_compile_ready.sql`.
6. `database/objects/04_packages_compile_ready.sql`.
7. `database/objects/10_procedures_compile_ready.sql`.
8. `database/install/99_check_invalid_objects.sql`.

## Not Auto-Installed

1. `database/optional/05_views_draft.sql`: draft views only. Object Browser has no real views.
2. `database/raw/*`: raw source exports. Traceability only.
