---
title: View Product Details
summary: Open and explore the detail page for any asset or bundle.
tags: [product, details]
keywords: [details, gallery, tags, license]
related: [browse-assets, buy-products, import-assets]
icon: material/image-search
last_updated: 2025-08-12
blender_version_target: 4.5+
feature_flags: []
---

# View Product Details

:material-image-search: Inspect imagery, metadata, tags, licensing, and ownership actions before you decide to purchase or import.

Use this page when you need deeper context than the product card offers.

## At a Glance
<div class="grid cards" markdown>

- :material-panorama: **Gallery**  
	Cycle through high‑res images; placeholder appears if none.
- :material-text: **Description**  
	Long form marketing or technical copy (fallback: *No description.*)
- :material-tag-multiple: **Tags**  
	Click to jump back to filtered browse view.
- :material-license: **License Dialog**  
	Inline summary + info icon opens full text.
- :material-currency-usd: **Purchase or Import**  
	Contextual primary action based on ownership.
- :material-cog: **Settings (Owned)**  
	Manage Version & Quality after importing rights unlocked.

</div>

## Quick Start
1. In any asset grid click the product title (or press Enter while focused).  
2. The interface transitions to the **Details** layout.  
3. Review gallery, description, tags, and license.  
4. Choose **Purchase** (not owned) or **Import** (owned).  
5. Use the Back button (top-left) or navigation breadcrumb to return.

## Prerequisites
!!! info "Before you open"
    :octicons-check-circle-fill-16:{ .toggle_green } You are signed in (avatar visible).  
    :octicons-check-circle-fill-16:{ .toggle_green } Stable internet (for gallery + license fetch).  
    :octicons-check-circle-fill-16:{ .toggle_green } Asset is discoverable via Browse or Search.  
    :octicons-check-circle-fill-16:{ .toggle_green } Add-on not in Offline mode if you need updated data.

## Gallery Mechanics
<div class="grid" markdown>

=== "Controls"
      - **Arrow buttons**: cycle previous (:octicons-triangle-left-24:) and next (:octicons-triangle-right-24:) image.  
      - **Dots / indicators**: click to jump directly.  
      - **Keyboard**: <kbd>←</kbd>/<kbd>→</kbd> may navigate (if focus inside gallery).  
      - Placeholder image appears if no media uploaded.

=== "Tips"

      - First image usually acts as the marketing thumbnail.  
      - If images fail to load, check connectivity or reload the panel.  
      - Animated formats (e.g., GIF/WebP) display motion; large files may stream progressively.

=== "Edge Cases"

      - **Broken image link**: shows fallback icon.  
      - **One image only**: arrows hidden for cleaner UI.  
      - **Very tall images**: letterboxed to fit layout constraints.

</div>

![Detail gallery example](../assets/gifs/view_details_example.webp){ width="52%" align=right }

## Content Sections
=== "About"

      Long form description. If none available the interface displays *No description.* to clarify absence.

=== "Tags"

      Click any tag to exit details and reopen Browser filtered by that tag. Multiple tag selection may refine further depending on browse state logic.

=== "License"

      Shows a short license name; an info (question mark) icon opens a modal dialog containing the full text. Scroll within dialog if lengthy.

=== "Technical (If Present)"

      Some products may surface extra metadata (poly count, file size, variant count) – these appear conditionally under the description block.


## Ownership States

=== "Not Owned"

    !!! success "Primary Action: Purchase"
         - Button label: **Purchase (X credits)**  
         - Disabled if balance insufficient (or shows quick link).  
         - Opens confirmation dialog with price, balance, and optional Recharge / Redeem actions.

    Secondary elements may include a subtle reminder of license type.

=== "Owned"

    !!! success "Primary Action: Import"
         - **Import** button becomes available immediately.  
         - **Settings** (gear) opens variant/quality controls.  
         - License badge may show ownership scope (e.g., "Studio").

    Use Settings after first import to fine-tune future pulls.

=== "State Differences"

    | Aspect | Not Owned | Owned |
    | ------ | --------- | ----- |
    | Main Button | Purchase (credits) | Import |
    | Secondary Action | — | Settings (gear) |
    | License Display | Summary + dialog | Summary + dialog |
    | Variant Selector | Preview only (maybe disabled) | Active & changeable |
    | Tag Interaction | Enabled | Enabled |


## Navigation & Return
!!! note "Going Back"
      Use the **Back to Browse** button (top-right) when available. If state logic replaces it, you can also:  
      - Click the browser-style back arrow (if using navigation history).  
      - Use global navigation (Guides → Browse Assets).  
      - Press <kbd>Esc</kbd> if mapped to exit details (implementation dependent).

## Troubleshooting {: #troubleshooting }
??? question "Why are there no images?"
      The product may not have media yet or your connection failed mid-load. Try refreshing the panel or verifying connectivity.

??? failure "License dialog doesn't open"
      Check for script errors (developer console) or reinitialize the UI. Offline mode may block license fetch.

??? warning "Purchase button disabled"
      Your credit balance is insufficient or a transaction is in-flight. Open **Manage Credits** in a separate panel or retry after a moment.

## Next Steps
<div class="grid cards" markdown>

- :material-cart: **Buy Products**  
	Proceed to purchase if not owned.  
	[:octicons-arrow-right-24: Purchase Guide](buy-products.md)

- :material-import: **Import Assets**  
	Bring owned products into your scene.  
	[:octicons-arrow-right-24: Import Guide](import-assets.md)

- :material-tag: **Use Tags & Categories**  
	Speed up discovery via taxonomy.  
	[:octicons-arrow-right-24: Tag Guide](tags-categories.md)

</div>

## Assumptions
???+ note "Implementation Notes"
    - Back button exact placement inferred from current navigation layout.  
    - Keyboard shortcuts depend on active focus + registered handlers.  
    - Variant + Quality controls hidden until ownership is established.  
    - Some metadata fields are optional and may not render.

