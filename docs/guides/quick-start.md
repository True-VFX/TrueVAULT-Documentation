---
title: Quick Start
summary: Install, sign in, browse, purchase, and import your first asset.
tags: [quick start, onboarding]
keywords: [install, sign in, first asset]
related: [../index.md, browse-assets, buy-products, import-assets]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Quick Start

Follow these steps to get productive fast.

## 1. Install the Add-on
<div class="truevault-install-action" data-install-url="https://antnxpyjvpvklwhdwhmq.supabase.co/true_vault.zip?repository=%2Ffunctions%2Fv1%2Fget-repo&blender_version_min=4.5.0" data-platform="" download="truevault-addon-latest.zip">
  <div class="truevault-drag-group">
    <button class="truevault-drag-button" draggable="true" style="display: inline-flex; align-items: center; gap: 8px; padding: 12px 24px; background: #007bff; color: white; border: none; border-radius: 6px; cursor: move; font-weight: 500; text-decoration: none; margin-bottom: 12px;" ondragstart="handleDragStart(event)">
    <span>Drag and Drop into Blender</span>
    </button>
  </div>
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

1. Drag the above installation url into Blender.
2. Follow prompts from Blender regarding the library.
3. (Optional) Set a custom Library Path under Preferences > Add-ons > TrueVAULT.

## 2. Open the Panel
1. In a 3D View press `N` to open the Sidebar.
2. Click the TrueVAULT tab.

## 3. Sign In / Create Account ![Authentication UI displaying Sign In and Sign Up options](../assets/img/auth_ui.webp){ width="50%"; align=right }
You will see Sign In prompts if not authenticated.

1. Click Sign In.
2. Enter email and password.
3. Complete email verification (check inbox) if prompted.
4. If Multi-Factor Auth required, follow on-screen steps (Add Phone, Verify Code).
5. Set Name and Username when asked.


## 4. Browse ![Searching for assets example](../assets/gifs/searching_example.webp){ width="50%"; align=right }

- Use the Search field (magnifier icon) to find assets.
- Open Filters (funnel icon) for sort, price range, type, owned.
- Open Categories (triangle icon) to drill down by category path.

<br>
<br>
<br>
<br>
<br>
<br>

## 5. View Details ![Viewing details of asset examples ](../assets/gifs/view_details_example.webp){ width="25%"; align=right }
1. Click a product title on its card.
2. Explore gallery arrows or dots to cycle images.
3. Review Tags and License information.

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

## 6. Purchase (If Not Owned) ![Image of Unowned Product Card](../assets/img/product_card_unowned.webp){ width="25%"; align=right }
1. Click Purchase.
2. Dialog shows credit price and your balance.
3. If insufficient credits, click Recharge (opens web page) or Redeem Code.
4. Confirm Purchase. Success message appears.

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

## 7. Import ![alt text](../assets/gifs/download_importing_example.webp){ width="50%"; align=right }
1. Owned asset shows an Import button.
2. Optionally click the gear icon to choose Version & Quality.
3. Click Import.
4. For objects: Click in the viewport to place. For textures: select objects first to auto-apply material. For heightmaps: a geometry nodes setup is created.
5. Wait for download progress (you can Cancel).

## 8. Verify
- Imported objects appear in the active collection.
- Materials appear in the Material list if texture asset.
- Heightmap object with Geometry Nodes modifier if heightmap asset.

## See Also
- [Browse Assets](browse-assets.md)
- [Buy Products](buy-products.md)
- [Import Assets](import-assets.md)
- [Manage Credits](manage-credits.md)

## Assumptions
Some setup steps inferred due to missing explicit installer text.
