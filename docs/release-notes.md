---
title: Release Notes
summary: Changes included in version v1.0.0.
tags: [release]
keywords: [release, changelog]
related: [index]
last_updated: 2025-08-12
blender_version_target: 4.5+
feature_flags: []
---

## Since v1.1.0

- VDB assets
  - Add VDB as an asset subtype across browse filters and UI icons.
  - Support VDB import with volume placement and thumbnails.
- Background downloads
  - New Background Download action on product details to pre-cache without placement.
  - Shows separate Downloading and Unpacking progress on the product card and in Preferences > Advanced.
  - Cancel active transfers from the card or Preferences.
- Auto-download on unlock
  - Preferences > Advanced: per-type auto-download toggles (Textures, Objects, VDBs, Height Maps) and a max size limit (0 = unlimited).
  - After purchasing/unlocking, assets auto-download in the background when enabled.
  - New Download All Owned Assets action with optional “Download All Levels”.
- Import & placement improvements
  - Product card now indicates Unpacking stage during import.
  - Multi-place options: random scale and random Z rotation (Preferences > Display).
  - Option to put singular object assets into their own collection on import.
- Materials
  - TruePBR: add map toggles (Gloss, Reflection, Dx map) for ST assets.
- UI & UX
  - Quick type toggles added to the browser header.
  - Caps Lock warning in password fields during auth flows.


# v1.0.0

## New
- Initial public documentation version.
- Asset browsing with search, sort, filters, categories, tags.
- Product details with gallery, tags, license view.
- Purchase flow with credit balance and recharge.
- Import for Object, Texture, Height Map assets.
- Variant dialog (Version & Quality) + update check.
- Download history and licenses views.
- Account management, MFA-aware auth flow.
- Refund operation for completed purchases.
- Offline cached browsing for previously seen data.

## Known Limitations
- VDB and Preset asset import types not yet implemented.
- Some UI placements marked as Assumption pending final design.

## Future
- Expanded asset subtype support.
- Enhanced search facets.
- Additional analytics and usage tips.
