---
title: Import Problems
summary: Resolve failures during asset import.
tags: [troubleshooting, import]
keywords: [import, error]
related: [common-issues, performance-cache]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Import Problems

| Symptom | Likely Cause | Resolution |
|---------|--------------|-----------|
| Import button disabled | Asset not owned / price unknown | Purchase asset or reload |
| Download retries message | Transient network failure | Wait; auto retries up to 3 times |
| Import canceled warning | You cancelled or pressed Esc | Re-run Import |
| Missing textures in material | Texture files absent | Check asset files in library path, re-import |
| Heightmap node group missing | Library .blend not found | Reinstall add-on assets (Assumption) |

## See Also
- [Offline & Caching](../guides/offline-caching.md)
