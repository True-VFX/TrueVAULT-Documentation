---
title: TrueVAULT Add-on
template: home.html
summary: Discover, purchase, and import high-quality assets directly inside Blender.
tags: [overview, quick start]
keywords: [TrueVAULT, asset store, blender assets, import]
related: [guides/quick-start]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# TrueVAULT Blender Add-on

TrueVAULT integrates an asset store into Blender so you can browse, buy, and import assets without leaving Blender!

## What You Can Do?
- Browse public and owned assets.
- Filter by categories, tags, type, price, ownership.
- View rich product details and image galleries.
- Purchase with credits and redeem recharge codes.
- Import assets (Objects, Textures, Heightmaps) directly into the scene.
- Manage versions, qualities, and updates for owned assets.
- See download history and license info.
- Handle account profile, MFA, and sign-in flows.

## Quick Start (Summary)
<div class="truevault-install-action" data-install-url="https://antnxpyjvpvklwhdwhmq.supabase.co/true_vault.zip?repository=%2Ffunctions%2Fv1%2Fget-repo&blender_version_min=4.5.0" data-platform="" download="truevault-addon-latest.zip">
  <div class="truevault-drag-group">
    <button class="truevault-drag-button" draggable="true" style="display: inline-flex; align-items: center; gap: 8px; padding: 12px 24px; background: #007bff; color: white; border: none; border-radius: 6px; cursor: move; font-weight: 500; text-decoration: none; margin-bottom: 12px;" ondragstart="handleDragStart(event)">
    <span>Drag and Drop into Blender</span>
    </button>
  </div>
  <!-- <small style="display: block; text-align: center; color: #666; font-size: 14px;">
    ...or <a href="https://antnxpyjvpvklwhdwhmq.supabase.co/true_vault.zip?repository=%2Ffunctions%2Fv1%2Fget-repo&blender_version_min=4.5.0" download="truevault-addon-latest.zip" style="color: #007bff; text-decoration: underline;">download</a> 
    and <a href="https://docs.blender.org/manual/en/dev/editors/preferences/extensions.html#install" target="_blank" style="color: #007bff; text-decoration: underline;">Install from Disk</a>
  </small> -->
</div>

<script>
    function handleDragStart(event) {
        // Get the install URL from the parent container
    const container = event.target.closest('.truevault-install-action');
    const installUrl = container.getAttribute('data-install-url');
    
    // Set the drag data - this is what Blender will receive
    event.dataTransfer.setData('text/uri-list', installUrl);
    event.dataTransfer.setData('text/plain', installUrl);
    
    // Set drag effect
    event.dataTransfer.effectAllowed = 'copy';
    
    // Optional: Add visual feedback during drag
    event.target.style.opacity = '0.5';
}

// Add dragend event to restore visual state
document.addEventListener('DOMContentLoaded', function() {
    const dragButton = document.querySelector('.truevault-drag-button');
    if (dragButton) {
        dragButton.addEventListener('dragend', function(event) {
            event.target.style.opacity = '1';
        });
    }
});
</script>

1. :material-arrow-all: Drag and drop the above into Blender to install TrueVAULT.
2. Open the Sidebar (N) in the 3D View. Select the TrueVAULT panel.
3. Sign In or create an account if needed.
4. Use the search bar or open Filters (funnel icon) or Categories (triangle icon) to narrow results.
5. Click a product title to open details. Use Purchase if you have enough credits.
6. After purchase, click Import to place or apply the asset.
7. Use the gear icon on owned assets to choose Version & Quality.

See the full [Quick Start](guides/quick-start.md) for detailed steps.

## See Also
- [Browse Assets](guides/browse-assets.md)
- [Buy Products](guides/buy-products.md)
- [Import Assets](guides/import-assets.md)
- [Account & Profile](guides/account-profile.md)

## Assumptions
Some behaviors inferred from code where UI text not explicitly documented.
