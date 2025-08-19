---
title: Properties & Filters Reference
summary: All user-visible settings, fields, and filters.
tags: [reference, properties]
keywords: [properties, filters]
related: [operators, panels-menus]
last_updated: 2025-08-12
blender_version_target: 4.5+
feature_flags: []
---

# Properties & Filters

## Add-on Preferences
| Label | Internal | Where to Find | What It Does | Range / Options | Notes |
|-------|----------|---------------|--------------|-----------------|-------|
| Library Path | `library_path` | Edit > Preferences > Add-ons > TrueVAULT | Sets folder for downloaded assets | Directory path | Defaults to user home / TrueVAULT/library if empty |
| Products Per Page | `products_per_page` | Preferences | Max items per page in grid | 1–128 (default 24) | Higher values show more but may reduce performance |

## Browser Header
| Label | Internal | Where to Find | What It Does | Options | Side Effects |
|-------|----------|---------------|--------------|---------|-------------|
| Search | `search` | Asset Store header | Text filter on title | Free text | Triggers new query |
| Sort | `sort` | Header (A/Z icon) | Ordering of results | Newest, Oldest, A–Z, Z–A | Resets to page 1 when changed (Assumption) |
| Tab (All Assets / Owned Assets) | `tab` | Header | Switch data source | browser / library | Reloads active tab state |

## Filters Popover
| Label | Internal | What It Does | Options | Notes |
|-------|----------|--------------|---------|-------|
| Price Range | `filter_price_range` | Restrict by credit price | Min 0–100 (slider) | Adjust max if store extends pricing |
| Product Type | `filter_product_type` | Filter by high-level type | All, Asset, Asset Pack | Asset Pack = bundle |
| Type | `filter_asset_type` | Filter asset subtypes | All, Object, Texture, Heightmap | Future types may appear |
| Owned | `filter_owned` | Show only owned | Bool | Forces offline if signed out |
| Bundle ID | `filter_bundle_id` | Limit to one bundle | ID string | Set internally when viewing bundle |
| Tags | `filter_tags` | Active tag filters (JSON) | Derived | Managed by tag clicks |

## Categories Popover
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| Category Path | `filter_categories` | JSON list of selected categories | Last entry is active category |
| Category Search | `categories_search` | Filters visible categories | Case-insensitive |

## Product Details State
| Label | Internal | What It Does | Options | Notes |
|-------|----------|--------------|---------|-------|
| Image Index | `product_details_image_index` | Current gallery image | 0..N-1 | Controlled by arrows/dots |
| Asset Quality | `product_details_quality` | Selected quality for import | Dynamic list | Populated from asset qualities |
| Product ID | `product_id` | Current product in view | UUID | Internal navigation |
| State | `state` | Current sub-state | browser, product_details, download_history, bundle_items | Drives draw paths |

## Variant Dialog
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| Quality | `quality` | Selects quality variant | Saved to asset metadata |
| Version | `version` | Selects version variant | Defaults to latest compatible |

## Purchase Dialog
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| Product Icon | - | Visual identification | Asset type icon |
| Price | - | Shows cost | Turns alert if insufficient |

## Balance Box
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| Credit Balance | `credit_balance` | Displays available credits | Synced on reload |
| Get Credits | (url_open) | Opens purchase page | External browser |
| Redeem Code | `redeem_recharge_code` | Redeems recharge code | Dialog/operator |

## Account Settings
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| Email | `email` (user) | Shows account email | Pencil edits |
| Name | `name` | Profile name | Pencil edits |
| Username | `username` | Unique handle | Pencil edits |
| Password | (change_password) | Change password dialog | Button |

## Asset Card / Owned Controls
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| Purchase / Import | `asset_store_purchase_product` / `asset_store_import_asset` | Buy or import | Context sensitive |
| Settings (gear) | `asset_store_asset_menu` | Open variant dialog | Only when owned |
| Download Progress | - | Shows current download | Cancel available |

## License Section
| Label | Internal | What It Does | Notes |
|-------|----------|--------------|-------|
| License Title | `license` | Name of license | From product metadata |
| Info (question) | `info` | Opens full license text | Modal |

## Hidden / Internal (Not Documented in UI)
- `add_state`, `init`, internal query manager fields.

## See Also
- [Operators](operators.md)
- [Panels & Menus](panels-menus.md)
