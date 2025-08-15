---
title: Offline & Caching
summary: Work with cached assets when offline or signed out.
tags: [offline, cache]
keywords: [offline, cache, local]
related: [import-assets, browse-assets]
icon: material/cloud-off
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Offline & Caching

TrueVAULT uses locally cached data when cached or network is unavailable.

## Automatic Offline Mode
- If internet check fails or you are signed out while filtering `Owned`, queries switch to offline.

## What Works Offline
- Browsing cached product list.
- Importing already downloaded assets.

## What Does Not Work
- Purchasing.
- Downloading new assets or variants.
- Refreshing remote metadata.

## Forcing a Refresh
1. When back online click `Reload`.
2. Cached products update from local store then remote.

## Library Path
- Assets stored under your configured library directory.

## See Also
- [Import Assets](import-assets.md)
- [Browse Assets](browse-assets.md)
