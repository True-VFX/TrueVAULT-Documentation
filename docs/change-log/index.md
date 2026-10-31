---
title: Change Log
summary: Latest user‑facing changes to the TrueVAULT add‑on.
tags: [release, changelog]
keywords: [TrueVAULT, release, changelog, latest]
related: [release-notes]
last_updated: 2026-10-31
blender_version_target: 5.1+
feature_flags: []
---

# Latest Release — v1.4

For changes in earlier versions, pick a version in the sidebar.

## New
- ABO dataset
  - New ABO tab with categories, type filters and a filter panel.
  - Ownership check and purchase access for ABO datasets.
- Node trees and worlds
  - Browse and import node group assets in the Geometry, Shader and Compositor editors, each with its own panel.
  - World assets: import and set as the active world.
- Placement
  - New placement gizmo replaces the green import text box.
  - Snap to the closest mesh face with correct normals.
  - Rotation controls and orientation toggle (F) with a default orientation setting.
  - Placement hints moved to the status bar.

## Improvements
- Faster UI: updated state manager, image optimisations and background thread workers.
- Sign-in sessions are stored securely and persist between Blender sessions.
- Bundled Python dependencies updated (Supabase client 2.33).

## Fixes
- Wrong naming of node-editor-specific node groups.
- Node tree panel no longer shows in the World node editor.
- Import button icon now matches the Vault icon in ABO.
- Several import and gizmo fixes.
