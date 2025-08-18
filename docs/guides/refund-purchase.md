---
title: Refund a Purchase
summary: Request a refund on a completed purchase.
tags: [refund, purchase]
keywords: [refund, purchase]
related: [buy-products, manage-credits, refund-policy]
icon: material/cash-refund
last_updated: 2025-08-15
blender_version_target: 4.5+
feature_flags: []
---

# Refund a Purchase

Request a refund for qualifying purchases.

> **Need the detailed rules?** See the full [Refund Policy](../reference/refund-policy.md) for eligibility, download thresholds, and calculation examples.

## At a Glance
<div class="grid cards" markdown>

- :material-history:{ .lg .middle } __Find Purchase__  
  Locate in history.  
  [:octicons-arrow-right-24: Step](#steps)

- :material-menu:{ .lg .middle } __Open Menu__  
  Access action list.  
  [:octicons-arrow-right-24: Menu](#steps)

- :material-cash-refund:{ .lg .middle } __Refund Action__  
  Initiate request.  
  [:octicons-arrow-right-24: Action](#steps)

- :material-progress-check:{ .lg .middle } __Result__  
  Credits adjusted.  
  [:octicons-arrow-right-24: Result](#result)

- :material-shield-alert:{ .lg .middle } __Policy Rules__  
  Limits & thresholds.  
  [:octicons-arrow-right-24: Policy](../reference/refund-policy.md)

</div>

## Requirements
- [ ] Purchase status is `Completed`.
- [ ] Inside 30‑day refund window.
- [ ] Download count below policy threshold (see policy).
- [ ] No prior refund for same asset (if restricted).

## Steps ![Location of Refund Product](../assets/img/purchase_history_menu_location.webp){ width=50%; align=right }
1. Open `Purchase History` (Menu :material-menu: > Purchase History).
2. Find the purchase entry.
3. Open its menu :material-menu:.
4. Click `Refund Product`.
5. Confirm any dialog prompts.

## Result
- Credits returned or adjusted (depends on server response).
- Product ownership may revoke if applicable.

## Troubleshooting {: #troubleshooting }
??? question "Refund option missing?"
    * Purchase outside allowed window.  
    * Already refunded previously.  
    * Download threshold exceeded.

??? question "Credits not updated?"
    * Wait for server sync (few seconds).  
    * Refresh purchase history.  
    * Check network connection.

??? question "Accidental refund?"
    * Re-purchase asset (credits permitting).  
    * Contact support for edge reversals (policy dependent).

## Next Steps
<div class="grid cards" markdown>

- :material-cart: __Buy Products__  
  Purchase new assets.  
  [:octicons-arrow-right-24: Buy](buy-products.md)

- :material-cash: __Manage Credits__  
  Track balance changes.  
  [:octicons-arrow-right-24: Credits](manage-credits.md)

- :material-shield-alert: __Refund Policy__  
  Full rules & limits.  
  [:octicons-arrow-right-24: Policy](../reference/refund-policy.md)

</div>
