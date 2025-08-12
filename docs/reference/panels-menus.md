---
title: Panels & Menus Reference
summary: Locations and purposes of all UI panels and menus.
tags: [reference, panels]
keywords: [panel, menu]
related: [operators, properties-filters]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Panels & Menus

| Panel / Menu | Where to Find | Purpose | Key Interactions | Also known as |
|--------------|---------------|---------|------------------|---------------|
| Asset Store Panel | 3D View > Sidebar (N) > TrueVAULT tab | Main browsing, details, purchases, import | Search, Filters, Categories, Tabs, Product Cards | `TRUEVAULT_PT_asset_store_panel` |
| Filter Popover | Button (funnel icon) in Asset Store header | Advanced filtering | Price Range, Type, Owned toggle | `TRUEVAULT_PT_asset_store_filter_panel` |
| Categories Popover | Button (triangle icon) in Asset Store header | Category navigation | Drill down, Back / Browse All, search | `TRUEVAULT_PT_asset_store_categories_panel` |
| Auth Panel (header) | 3D View Header (when embedded) | Integration point for auth UI | Shows nothing standalone | `TRUEVAULT_PT_auth_panel` |
| Store Menu | Menu button (three lines) in Asset Store header | Account + navigation shortcuts | Account Settings, Purchase History, Licenses, Preferences, Sign In/Out | `TRUEVAULT_MT_asset_store_menu` |
| Purchase Menu | Context popup from purchase history entries | Item actions | Refund Product, View Product Details | `true_vault.asset_store_purchase_menu` (operator) |
| Asset Variant Dialog | Gear icon on owned asset | Choose version/quality, check updates | Quality, Version, Check for Updates | `true_vault.asset_store_asset_menu` |
| Purchase Dialog | Purchase button | Confirm or recharge | Confirm Purchase / Recharge Credits | `true_vault.asset_store_purchase_product` |
| Import Modal | Import button (owned asset) | Interactive placement / download | Click in viewport, cancel | `true_vault.asset_store_import_asset` |

## See Also
- [Operators](operators.md)
- [Properties & Filters](properties-filters.md)
