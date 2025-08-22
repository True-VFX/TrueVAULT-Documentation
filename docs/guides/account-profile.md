---
title: Account & Profile
summary: Update email, name, username, password, and sign out.
tags: [account, profile]
keywords: [account, profile, password]
related: [auth-flow, manage-credits]
icon: material/account
last_updated: 2025-08-22
blender_version_target: 4.5+
feature_flags: []
---

# Account & Profile

Manage your identity and security.

## At a Glance
<div class="grid cards" markdown>

-   :material-account-edit:{ .lg .middle } __Update Profile__

    ---

    Change name & username.
    [:octicons-arrow-right-24: Go](#change-name--username)

-   :material-email-edit:{ .lg .middle } __Change Email__

    ---

    Start verification flow.
    [:octicons-arrow-right-24: Email](#change-email)

-   :material-form-textbox-password:{ .lg .middle } __Password__

    ---

    Rotate credentials.
    [:octicons-arrow-right-24: Password](#change-password)

-   :material-logout:{ .lg .middle } __Sign Out__

    ---

    End current session.
    [:octicons-arrow-right-24: Sign Out](#sign-out)

-   :material-delete-alert:{ .lg .middle } __Delete Account__

    ---

    Irreversible removal.
    [:octicons-arrow-right-24: Delete](#delete-account)

-   :material-cash:{ .lg .middle } __Credits__

    ---

    View balance & spend.
    [:octicons-arrow-right-24: Credits](manage-credits.md)

</div>

## Prerequisites
- Signed in user session.
- Network connectivity (for remote validation flows).

## Open Account Settings
1. Menu :material-menu: > Account Settings :material-account:.
2. Balance and Account  sections display.

## Link SuperHive Account
Use this if you previously purchased True VFX products on SuperHive and want them available in TrueVAULT.

1. In the Account section find "SuperHive Account:".
2. If it shows `Linked` :material-check:, you are all set.
3. If it shows `Link Account`, click it. A browser opens to the TrueVAULT link site.
4. Sign in with your TrueVAULT credentials (same account you use in the add‑on).
5. Enter your SuperHive account email and send the link email.
6. Open the confirmation email on the same device and click the confirmation link.
7. After success, your purchases are associated to your TrueVAULT account. Assets may take up to 24 hours to appear; if the browser in Blender doesn’t refresh, try Sign Out then Sign In.

Notes
- The link site is a minimal TrueVAULT page that handles sign‑in, sends a secure email, and confirms at `/link/superhive/confirm`. You must be signed in on that page to complete confirmation.
- The link button in Blender opens `https://api.true-vfx.xyz/` which hosts this flow.

## Change Email
1. In Account section click :material-pencil: next to Email.
2. Enter new email.
3. Confirm via clicking link in emails sent to both old and new email.

## Change Name / Username {: #change-name--username }
1. Click :material-pencil: next to Name or Username.
2. Enter new value.
3. Confirm; display updates.

## Change Password
1. Click `Change Password`.
2. Enter current and new password fields.
3. Confirm.

## Sign Out
1. Menu :material-menu: > Sign Out.
2. Panel returns to sign-in prompts.

## Delete Account
1. In Account Settings click `Delete Account` (non-emboss button / plain text).
2. Confirm; data removal may be irreversible.

## Troubleshooting {: #troubleshooting }
??? question "Email change not verifying?"
    * Re-send verification from dialog.  
    * Check spam folder.  
    * Ensure you stayed signed in until confirmed.

??? question "Username already taken?"
    * Try an alternate slug (add number or variation).  
    * Usernames must be unique across the service.

??? question "Password dialog not appearing?"
    * Check Blender Console for errors.  
    * Re-open Account Settings menu.  
    * Ensure add-on is latest version.

??? question "Didn’t get the SuperHive confirmation email?"
    * Check spam/junk folders.  
    * Request the email again from the link site (Settings → SuperHive).

??? question "SuperHive link says expired or invalid?"
    * Confirmation links expire after a short time.  
    * Start the link again and click the new email promptly.

??? question "It says my SuperHive email is already linked?"
    * You may have linked to a different TrueVAULT account.  
    * Contact support to resolve the conflict.

## Next Steps
<div class="grid cards" markdown>

- :material-key: __Authentication Flow__  
    Understand verification sequence.  
    [:octicons-arrow-right-24: Auth](auth-flow.md)

- :material-cash: __Manage Credits__  
    Recharge & track usage.  
    [:octicons-arrow-right-24: Credits](manage-credits.md)

- :material-cart: __Purchase Assets__  
    Learn credit-based purchasing.  
    [:octicons-arrow-right-24: Buy](buy-products.md)

</div>
