---
title: Import Assets
summary: Bring owned assets into your scene.
tags: [import, assets]
keywords: [import, placement, texture, heightmap]
related: [manage-variants-updates, view-download-history]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Import Assets

Importing downloads (if needed) then adds data to the current Blender file.

## Requirements
- Asset owned.
- Signed in for first download or if not cached.
- Internet if asset not installed locally.

## Choose Version & Quality (Optional)
1. Click the gear icon on the owned asset card.
2. Dialog lists Quality and Version.
3. Select desired options.
4. (Optional) Click Check for Updates.
5. Confirm to save selection.

## Import Steps (Object Assets)
1. Click Import.
2. If prompted sign in or fetch identifiers.
3. Wait for any download progress bar.
4. When prompted (modal) click in 3D View to place.
5. Objects link into active collection.

## Import Steps (Texture Assets)
1. Select target objects.
2. Click Import.
3. Material is created/updated and assigned to selected objects.
4. Texture nodes filled where files exist; missing maps muted.

## Import Steps (Heightmap Assets)
1. Click Import.
2. Geometry Nodes object is created with displacement setup.
3. Heightmap image loaded and sockets assigned.

## Progress & Cancellation
- Progress bar shows during download.
- Cancel button (X icon) stops download; import ends.

## After Import
- You can re-import with different version/quality by changing settings then repeating.

## See Also
- [Manage Variants & Updates](manage-variants-updates.md)
- [View Download History](view-download-history.md)
- [Offline & Caching](offline-caching.md)
