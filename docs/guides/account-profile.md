---
title: Account & Profile
summary: Update email, name, username, password, and sign out.
tags: [account, profile]
keywords: [account, profile, password]
related: [auth-flow, manage-credits]
icon: material/account
last_updated: 2025-08-12
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

## Change Email
1. In Account section click :material-pencil: next to Email.
2. Enter new email.
3. Confirm via email link (if required).

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
