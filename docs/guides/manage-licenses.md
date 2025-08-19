---
title: Manage Licenses
summary: View add-on license information for owned products.
tags: [licenses]
keywords: [license, info]
related: [view-product-details, buy-products]
icon: material/certificate
last_updated: 2025-08-12
blender_version_target: 4.5+
feature_flags: []
---

# Manage Licenses

View license titles and details for owned addons.

!!! warning "Feature Status"  
    Addon licenses is an in-development feature and may not exist yet in your copy of TrueVAULT.

## At a Glance
<div class="grid cards" markdown>

- :material-certificate:{ .lg .middle } __Open Licenses__  
  Access list view.  
  [:octicons-arrow-right-24: Open](#open-licenses)

- :material-text-box-search:{ .lg .middle } __List Entries__  
  Titles & identifiers.  
  [:octicons-arrow-right-24: List](#license-list)

- :material-help-circle:{ .lg .middle } __Details Dialog__  
  Description & terms.  
  [:octicons-arrow-right-24: Detail](#view-license-details)

- :material-puzzle:{ .lg .middle } __Extensions__  
  Optional extra panel.  
  [:octicons-arrow-right-24: Extension](#open-extension-details-if-provided)

- :material-alert:{ .lg .middle } __Status__  
  Experimental feature.  
  [:octicons-arrow-right-24: Status](#feature-status)

</div>

## Prerequisites
- At least one owned add-on with license metadata.
- Online connectivity for freshest license text (if remotely fetched).

## Open Licenses
1. Click the menu (:material-menu:) in the Asset Store header.
2. Select `Addon Licenses`.

## License List
- Shows each license with title.
- May include short code or version.

## View License Details
1. In product details license row click question mark icon.
2. Dialog opens with license description.

## Open Extension Details (If Provided)
Some licensed extensions expose an additional details view.
1. Select the license entry.
2. Click the Extension / View button (operator: `true_vault.view_extension`).
3. A details panel or browser view opens (implementation dependent).

## Feature Status {: #feature-status }
- Marked experimental; UI or flow may shift between releases.
- Report inconsistencies via support channel.

## Troubleshooting {: #troubleshooting }
??? question "Licenses menu missing?"
    * No licensed add-ons installed yet.  
    * Update to latest version of the add-on.  
    * Check Console for feature flag gating.

??? question "Details dialog empty?"
    * Remote fetch may have failed—retry with stable connection.  
    * License metadata might be incomplete; refresh product data.

??? question "Extension view button disabled?"
    * Not all licenses have an extension component.  
    * Re-select the entry to refresh state.

## Next Steps
<div class="grid cards" markdown>

- :material-eye:{ } __View Product Details__  
  Explore metadata & gallery.  
  [:octicons-arrow-right-24: Details](view-product-details.md)

- :material-cart:{ } __Buy Products__  
  Acquire new licensed add-ons.  
  [:octicons-arrow-right-24: Purchase](buy-products.md)

- :material-history:{ } __Download History__  
  Track your variant downloads.  
  [:octicons-arrow-right-24: History](view-download-history.md)

</div>
