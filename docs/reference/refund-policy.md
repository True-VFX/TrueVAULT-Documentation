---
title: Refund Policy
summary: Rules and calculations governing refunds for asset and bundle purchases.
icon: material/undo-variant
keywords: [refund, policy, credits, downloads]
tags: [refund]
last_updated: 2025-08-15
---

# Refund Policy
Short reference describing eligibility, calculation, and processing of refunds.

## At a Glance
<div class="grid cards" markdown>

-   :material-timer-sand:{ .lg .middle } __30-Day Window__

    ---

    Only purchases made in last 30 days qualify.  
    [:octicons-arrow-right-24: Eligibility](#eligibility)

-   :material-download-off:{ .lg .middle } __Download Limits__

    ---

    Single assets: no downloads. Bundles: eligible only if ≤50% of items have been downloaded.
    [:octicons-arrow-right-24: Download Rules](#download-rules)

-   :material-calculator:{ .lg .middle } __Partial Bundles__

    ---

    Deduct downloaded item prices (≤50%).  
    [:octicons-arrow-right-24: Refund Amount](#refund-amount-calculation)

-   :material-currency-usd:{ .lg .middle } __Credits Restored__

    ---

    Approved refunds return credits automatically.  
    [:octicons-arrow-right-24: Processing](#processing--effects)

</div>

## Eligibility
- Purchase status must be Completed.
- Purchase date within the last 30 days (rolling window).
- Purchase must belong to the requesting signed-in user.
- One refund maximum per purchase (enforced because status becomes Refunded).

## Download Rules
- **Single Asset**: Any downloads for that asset disqualifies refund.
- **Bundle**: Count how many distinct items in the bundle have any downloads.
    - If downloads > 50% of bundle items → refund denied.
    - If downloads ≤ 50% → eligible (may be partial).

## Refund Amount Calculation

- **Assets**: Full credits spent if eligible (no downloads). No partial for single assets.
- **Bundles**:
    1. None downloaded → Full credits spent.
    2. Some (≤50%) downloaded → Partial refund.
          - Start with the total credits you spent for the bundle. Subtract the original prices (in credits) of every item you actually downloaded. The remainder is what you get back as a refund.
            - Formula: $\text{refund} = \text{credits_spent} - \sum_{i \in D} \text{original_price}_i$
          - Floor at 0 (never negative).
- All arithmetic uses integer credit units (no rounding errors).

### Examples
| Scenario | Bundle Size | Items Downloaded | Download % | Refund | Notes |
|----------|-------------|------------------|------------|--------|-------|
| Asset A not downloaded | n/a | 0 | n/a | 100% spent | Full refund |
| Asset A downloaded | n/a | 1 | n/a | 0 | Denied (download) |
| 10-item bundle, none downloaded | 10 | 0 | 0% | 100% | Full refund |
| 10-item bundle, 3 downloaded | 10 | 3 | 30% | Spent - price(d1+d2+d3) | Partial (≤50%) |
| 10-item bundle, 6 downloaded | 10 | 6 | 60% | 0 | Denied (>50%) |

## Processing & Effects {: #processing--effects }
- Refund auto-approves instantly (no manual pending state).
- Purchase status changes: Completed → Refunded.
- Internal credit usages tagged with refund amounts so credits reappear in balance.
- Product / bundle entitlement may be revoked if required.
- Your displayed credit balance updates after processing.

## FAQ
??? question "Why was my single asset refund denied?"
    You already downloaded the asset. Any download makes the asset non-refundable. If you have not downloaded the asset please collect the purchase ID and contact Support.

??? question "What happens if I downloaded exactly 50% of a bundle?"
    You remain eligible. A partial refund deducts the prices of the downloaded items.

??? question "Can I refund after 30 days?"
    Not through the automatic flow. Contact Support only for exceptional cases.

??? question "Why is my refund amount lower than what I spent on a bundle?"
    You downloaded some items. Their original prices were subtracted.

??? question "Can a refunded purchase be refunded again?"
    No. After refund the purchase status prevents further refunds.

## Troubleshooting {: #troubleshooting }
??? failure "I believe I never downloaded anything but refund was denied"
    Verify you didn't trigger an automatic download (e.g., via a dependency). If you still believe it's an error, collect the purchase ID and contact Support.

??? failure "Credit balance not updated"
    Wait a few minutes and refresh. If still unchanged, contact Support with the purchase ID.

## Next Steps
<div class="grid cards" markdown>

-   :material-cart:{ .lg .middle } __Buy Products__

    ---

    Learn how to purchase assets and bundles.  
    [:octicons-arrow-right-24: Guide](/docs/guides/buy-products/)

-   :material-cash-refund:{ .lg .middle } __Request Refund__

    ---

    Step-by-step flow to initiate a refund.  
    [:octicons-arrow-right-24: Guide](/docs/guides/refund-purchase/)

-   :material-wallet:{ .lg .middle } __Manage Credits__

    ---

    Understand balances and usage.  
    [:octicons-arrow-right-24: Guide](/docs/guides/manage-credits/)

</div>
