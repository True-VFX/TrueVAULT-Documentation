---
title: Authentication Flow
summary: Understand each sign-in and verification step.
tags: [auth]
keywords: [sign in, verification, mfa]
related: [account-profile]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Authentication Flow

Covers the step sequence from not signed in to active session.

## States
1. Not Signed In: Shows Sign In button.
2. Sign In: Enter credentials.
3. Sign Up (if chosen): Enter email & password.
4. Email Verification: Instruction text + Resend Verification Email.
5. Add Phone (if MFA enabled): Provide phone number.
6. Verify Code (MFA): Enter code sent to device.
7. Set Profile: Provide Name and Username.
8. Home / Account Settings: Authenticated.

```mermaid
flowchart LR
    A[Not Signed In] --> B[Sign In]
    B --> C{Sign Up?}
    C -->|Yes| D[Sign Up: Enter email & password]
    C -->|No| E[Email Verification]
    D --> E[Email Verification]
    E --> F{MFA Enabled?}
    F -->|Yes| G[Add Phone]
    G --> H[Verify Code: MFA]
    H --> I[Set Profile]
    F -->|No| I[Set Profile]
    I --> J[Home / Account Settings]
```

## Resend Verification
- Button re-sends confirmation email using stored email.

## Multi-Factor Auth
- Flow branches after sign-in if phone missing and MFA enabled.

## Sign Out
- Returns to Not Signed In.

## See Also
- [Account & Profile](account-profile.md)
- [Buy Products](buy-products.md)
