---
title: Buy Products
summary: Purchase assets using credits inside Blender.
tags: [purchase, credits]
keywords: [buy, purchase, credits]
related: [manage-credits, import-assets, refund-purchase]
icon: material/cart
last_updated: 2025-08-15
blender_version_target: 4.5+
feature_flags: []
---

# Buy Products

:material-cart: Purchase an asset to unlock import, updates, and variant management directly inside Blender.

Use this guide when you find an asset you don't yet own and want to add it to your library using your credit balance.

## At a Glance
<div class="grid cards" markdown>

- :material-account-check: **Signed in**  
  You must be authenticated. See [Authentication Flow](auth-flow.md).
- :material-currency-usd: **Credits available**  
  Maintain a positive balance – manage via [Manage Credits](manage-credits.md).
- :material-wifi: **Online connection**  
  Required for price lookup, balance validation and purchase commit.
- :material-shield-check: **Secure**  
  All transactions processed through TrueVAULT services.

</div>

## Prerequisites

!!! info "Before you start"
    - [ ] You are signed in (avatar visible in the add-on header)
    - [ ] You have enough credits OR access to Recharge / Redeem Code
    - [ ] You have a stable internet connection
    - [ ] The asset is not already owned (no Import button yet)

## Purchase Paths
Choose whichever is faster for your workflow.

=== "From Product Card"

    1. Browse / search until you see a card without an Import button.
    2. Click **Purchase** (if the button is directly present) *or* click the card title to open details.
    3. Review the confirmation dialog.
    4. Click **Confirm Purchase** if balance sufficient.

=== "From Detail Page"

    1. Open the product detail page by clicking its title.
    2. Review description, variants, and price breakdown.
    3. Press **Purchase**.
    4. Confirm in the dialog.

??? tip "Dialog Reference"
    **Fields shown**: icon/thumbnail, product name, price (credits), your balance (shows an *Insufficient* label if too low), and action buttons.  
    If low on credits: **Recharge Credits** (opens browser) or **Redeem Code** (opens in-add-on flow).  
    Prices may vary by region or promotional events.

## Step-by-Step Checklist
Mark items as you progress.

- [ ] Locate a product you do not own.
- [ ] Open its detail or use card shortcut.
- [ ] Press **Purchase**.
- [ ] Confirm after verifying price & balance.
- [ ] (If insufficient) Recharge or Redeem Code, then retry.
- [ ] Wait for success message.
- [ ] Verify button changed to **Import**.

## Handling Insufficient Credits

!!! warning "Balance not enough"
    Your balance line is highlighted and an **Insufficient** tag appears. Use one of:  
    - **Recharge Credits**: opens your browser to the credit purchase portal.  
    - **Redeem Code**: enter a voucher to instantly increase balance.  
    After adding credits, re-open the dialog if it auto-closed.

???+ note "Why a dialog?"
    The dialog ensures the final price and your balance are locked at the moment of confirmation, reducing race conditions if prices or promotions update.

## After Purchase

!!! success "Purchase complete"
    - Credits decreased by the price paid.
    - Card updates: **Import** + **Settings** buttons appear.  
    - Ownership badge or tag displays (if configured).  
    - Variants & updates now accessible (see [Manage Variants & Updates](manage-variants-updates.md)).

### Quick Verification
1. Find the product card again.  
2. Confirm the **Import** button is visible.  
3. Check your updated credit balance in the header or balance panel.  
4. Optionally open **View Download History** to confirm the entry was logged.

## Troubleshooting

??? failure "Purchase fails or seems stuck"
    - Ensure you are still signed in (session may have expired).  
    - Check connectivity; offline mode cannot finalize purchases.  
    - Retry once; transient network issues can occur.  
    - If credits deducted but no ownership: capture the log and open [Refund a Purchase](refund-purchase.md).

??? question "Balance didn't update"
    - Click refresh / sync in the add-on.  
    - Wait a few seconds; the balance service may be slightly delayed.  
    - If still stale, sign out and back in to force a cache clear.

## Next Steps
<div class="grid cards" markdown>

- :material-currency-usd: **Manage Credits**  
  Recharge or view spending history.  
  [:octicons-arrow-right-24: Manage Credits](manage-credits.md)

- :material-import: **Import Assets**  
  Learn how to bring purchased assets into your scene.  
  [:octicons-arrow-right-24: Import Assets](import-assets.md)

- :material-clipboard-list: **View Download History**  
  Audit what you have pulled and when.  
  [:octicons-arrow-right-24: Download History](view-download-history.md)

- :material-cash-refund: **Refund a Purchase**  
  Recently bought something by mistake?  
  [:octicons-arrow-right-24: Refund Guide](refund-purchase.md)

</div>
