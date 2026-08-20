# Database Folder

## Folders

| Folder | Content |
|---|---|
| `install` | Entry scripts and diagnostics |
| `objects` | Compile-ready Oracle SQL |
| `raw` | Raw Object Browser exports |
| `optional` | Draft SQL not used by main install |

## Entrypoints

1. Existing APEX schema: `install/00_patch_existing_apex.sql`.
2. Clean schema: `install/00_install_fresh.sql`.
3. Diagnostics: `install/99_check_invalid_objects.sql`.
