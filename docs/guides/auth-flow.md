---
title: Authentication Flow
summary: Understand each sign-in and verification step.
tags: [auth]
keywords: [sign in, verification, mfa]
related: [account-profile]
icon: material/key
last_updated: 2025-08-12
blender_version_target: 4.5+
feature_flags: []
---

# Authentication Flow

Covers the step sequence from not signed in to active session.

## At a Glance
<div class="grid cards" markdown>

- :material-login:{ .lg .middle } __Sign In__  
  Enter existing credentials.  
  [:octicons-arrow-right-24: Step](#states)

- :material-account-plus:{ .lg .middle } __Sign Up__  
  Create new account.  
  [:octicons-arrow-right-24: Flow](#states)

- :material-email-fast:{ .lg .middle } __Verify Email__  
  Confirm ownership.  
  [:octicons-arrow-right-24: Verify](#resend-verification)

- :material-shield-key:{ .lg .middle } __MFA (If Enabled)__  
  Strengthen security.  
  [:octicons-arrow-right-24: Secure](#states)

- :material-account-edit:{ .lg .middle } __Profile Setup__  
  Name & username.  
  [:octicons-arrow-right-24: Profile](#states)

- :material-logout:{ .lg .middle } __Sign Out__  
  End session.  
  [:octicons-arrow-right-24: Out](#sign-out)

</div>

## Prerequisites
- Network connectivity to auth service.
- Valid email access for verification.

## States
1. Not Signed In: Shows `Sign In` button.
2. **Sign In**: Enter credentials.
3. **Sign Up** (if chosen): Enter email & password.
4. **Email Verification**: Instruction text + Resend Verification Email.
5. (Optional) **MFA**: Provide code / set up device.
6. **Set Profile**: Provide Name and Username.
7. Home / Account Settings: Authenticated.

## Resend Verification {: #resend-verification }
- Button re-sends confirmation email using stored email.

## Sign Out
- Returns to Not Signed In.

## Troubleshooting {: #troubleshooting }
??? question "Didn't receive verification email?"
    * Wait 1–2 minutes then click **Resend**.  
    * Check spam/junk folders.  
    * Whitelist the sender domain.  
    * Ensure email address is correct (restart Sign Up if typo).

??? question "MFA code rejected?"
    * Check device time sync (TOTP skew).  
    * Re-generate code & enter promptly.  
    * Use backup code if provided.

??? question "Looping back to Sign In?"
    * Session token expired—restart flow.  
    * Clear add-on cache / restart Blender.  
    * Confirm network connectivity.

## Next Steps
<div class="grid cards" markdown>

- :material-account: __Account & Profile__  
  Manage identity details.  
  [:octicons-arrow-right-24: Profile](account-profile.md)

- :material-cart: __Buy Products__  
  Learn purchase & credits.  
  [:octicons-arrow-right-24: Buy](buy-products.md)

- :material-cash: __Manage Credits__  
  Recharge & balance.  
  [:octicons-arrow-right-24: Credits](manage-credits.md)

</div>
