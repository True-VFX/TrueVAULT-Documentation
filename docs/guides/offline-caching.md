---
title: Offline & Caching
summary: Work with cached assets when offline or signed out.
tags: [offline, cache]
keywords: [offline, cache, local]
related: [import-assets, browse-assets]
icon: material/cloud-off
last_updated: 2025-08-12
blender_version_target: 4.5+
feature_flags: []
---

# Offline & Caching

TrueVAULT uses locally cached data when cached or network is unavailable.

## At a Glance
<div class="grid cards" markdown>

- :material-wifi-off:{ .lg .middle } __Auto Offline__  
  Detects connectivity loss.  
  [:octicons-arrow-right-24: Mode](#automatic-offline-mode)

- :material-database:{ .lg .middle } __Cached Browse__  
  Use stored product list.  
  [:octicons-arrow-right-24: Works](#what-works-offline)

- :material-download-off:{ .lg .middle } __Limitations__  
  Cannot fetch new data.  
  [:octicons-arrow-right-24: Limits](#what-does-not-work)

- :material-refresh:{ .lg .middle } __Force Refresh__  
  Update after reconnect.  
  [:octicons-arrow-right-24: Refresh](#forcing-a-refresh)

- :material-folder:{ .lg .middle } __Library Path__  
  Local asset storage.  
  [:octicons-arrow-right-24: Path](#library-path)

- :material-import:{ .lg .middle } __Import Cached__  
  Use previously downloaded.  
  [:octicons-arrow-right-24: Import](import-assets.md)

</div>

## Prerequisites
:octicons-check-circle-fill-16:{ .toggle_green } At least one prior successful sync for cached content.  
:octicons-check-circle-fill-16:{ .toggle_green } Sufficient disk space for asset variants.

## Automatic Offline Mode
- If internet check fails or you are signed out while filtering `Owned`, queries switch to offline.

## What Works Offline
| Feature | Offline | Online |
|---|:---:|:---:|
| Browsing cached product list | ✅ | ✅ |
| Importing already downloaded assets | ✅ | ✅ |
| Purchasing | ❌ | ✅ |
| Downloading new assets or variants | ❌ | ✅ |
| Refreshing remote metadata | ❌ | ✅ |

## Forcing a Refresh
1. When back online click `Reload`.
2. Cached products update from local store then remote.

## Library Path
- Assets stored under your configured library directory.

## Troubleshooting {: #troubleshooting }
??? question "Assets missing offline?"
    * They were never imported (no local copy).  
    * Use smaller quality next time to pre-cache.  
    * Verify library path points to previous downloads.

??? question "Still offline after reconnect?"
    * Click **Reload** to force metadata sync.  
    * Re-authenticate (token may have expired).  
    * Check firewall / proxy settings.

??? question "Import failing offline?"
    * Selected variant not cached—choose a previously downloaded quality.  
    * Confirm file permissions in library folder.

## Next Steps
<div class="grid cards" markdown>

- :material-import: __Import Assets__  
  Learn download & placement.  
  [:octicons-arrow-right-24: Import](import-assets.md)

- :material-database-search: __Browse Assets__  
  Filtering & categories.  
  [:octicons-arrow-right-24: Browse](browse-assets.md)

- :material-layers-triple: __Variants & Updates__  
  Manage versions & qualities.  
  [:octicons-arrow-right-24: Variants](manage-variants-updates.md)

</div>
