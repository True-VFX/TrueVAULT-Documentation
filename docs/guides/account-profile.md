---
title: Account & Profile
summary: Update email, name, username, password, and sign out.
tags: [account, profile]
keywords: [account, profile, password]
related: [auth-flow, manage-credits]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Account & Profile

Manage your identity and security.

## Open Account Settings
1. Menu (three lines icon) > Account Settings.
2. Balance and Account sections display.

## Change Email
1. In Account section click pencil next to Email.
2. Enter new email (dialog / operator flow).
3. Confirm via email link (if required).

## Change Name / Username
1. Click pencil next to Name or Username.
2. Enter new value.
3. Confirm; display updates.

## Change Password
1. Click Change Password.
2. Enter current and new password fields (dialog).
3. Confirm.

## Sign Out
1. Menu > Sign Out.
2. Panel returns to sign-in prompts.

## Delete Account
1. In Account Settings click Delete Account (red / non-emboss button).
2. Confirm; data removal may be irreversible.

## Repository Integration (If Enabled)
Some builds surface repository link utilities:
1. Click Create Repo Link to generate a sharable link (operator: `true_vault.create_repo_link`).
2. Use Refresh Repo Access Token to rotate credentials (operator: `true_vault.refresh_repo_access_token`).
3. Copy and use externally as required.

## See Also
- [Authentication Flow](auth-flow.md)
- [Manage Credits](manage-credits.md)
