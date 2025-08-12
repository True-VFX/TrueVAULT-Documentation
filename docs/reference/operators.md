---
title: Operators Reference
summary: Complete list of user-facing operators.
tags: [reference, operators]
keywords: [operator, action]
related: [panels-menus, properties-filters, flows-states]
last_updated: 2025-08-12
blender_version_target: 4.0+
feature_flags: []
---

# Operators

Each table row lists visible label (if any). Internal identifier appears in small text for search.

## Navigation & State
| Label | Internal | Where to Find | What It Does | Requirements | Side Effects | Related |
|-------|----------|---------------|--------------|--------------|--------------|---------|
| Back to Browser | `true_vault.asset_store_back_to_browser` | Asset details / sub-pages | Returns to main browsing grid | None | State resets to browser | View Product Details |
| Back (icon) | `true_vault.asset_store_back` | Browser header (when state stack present) | Navigate one step back in state hierarchy | State stack not empty | Previous view restored | Browse Assets |
| View Account Settings | `true_vault.asset_store_view_account_settings` | Menu | Opens account settings state | Signed in & online | State changes | Account & Profile |
| View Purchase History | `true_vault.asset_store_view_purchase_history` | Menu | Switches to purchase history view | Signed in & online | Starts background fetch | Refund a Purchase |
| View Licenses | `true_vault.asset_store_view_licenses` | Menu | Shows licenses listing | Signed in & online | None | Manage Licenses |
| View Product Details | `true_vault.asset_store_view_product_details` | Product card/title | Opens details page | None | State switches to product_details | View Product Details |
| View Bundle Items | `true_vault.asset_store_view_bundle_items` | Bundle details (Assumption) | Shows bundle items grid | Bundle product ID | State to bundle_items | Use Bundles |
| View Download History | `true_vault.asset_store_view_download_history` | Asset menu / buttons | Shows download history | Owned asset | State to download_history | View Download History |
| View Product Image (arrows/dots) | `true_vault.asset_store_view_product_image` | Product details gallery | Changes active gallery image | Images available | Updates image index | View Product Details |
| Set Page (numbers) | `true_vault.asset_store_set_page` | Pagination control | Loads selected page | Page in range | Fetch query for that page | Browse Assets |
| Product Menu | `true_vault.asset_store_product_menu` | Product details (asset) | Opens small menu (e.g., history) | Asset context | Popup drawn | View Product Details |
| Asset Variant Menu | `true_vault.asset_store_asset_menu` | Owned asset (gear) | Opens version/quality dialog | Owned asset | Selection persisted | Manage Variants & Updates |

## Filtering & Tags
| Label | Internal | Where to Find | What It Does | Requirements | Side Effects | Related |
|-------|----------|---------------|--------------|--------------|--------------|---------|
| Category Action (Add/Replace/Remove) | `true_vault.asset_store_category` | Categories popover | Adjusts active category path | Category selection | Query updated | Tags & Categories |
| Remove Tag | `true_vault.asset_store_remove_filter_tag` | Active tag chip (Assumption) | Removes tag filter | Tag active | Query updated | Tags & Categories |
| View Products by Tag | `true_vault.asset_store_view_products_by_tag` | Tag chip in details | Filters browser by tag | None | Query updated, state to browser | Tags & Categories |

## Purchasing & Credits
| Label | Internal | Where to Find | What It Does | Requirements | Side Effects | Related |
|-------|----------|---------------|--------------|--------------|--------------|---------|
| Purchase | `true_vault.asset_store_purchase_product` | Product details / card | Opens purchase dialog | Signed in; online | Balance updated on success | Buy Products |
| Refund Product | `true_vault.asset_store_refund_product` | Purchase menu | Attempts refund | Completed purchase | Ownership/credits adjust | Refund a Purchase |
| Redeem Recharge Code | `true_vault.redeem_recharge_code` | Balance area | Redeems code for credits | Signed in | Balance increases | Manage Credits |
| Redeem License Key | `true_vault.redeem_license_key` | (If surfaced) | Activates license key | Signed in & key valid | License list updates | Manage Licenses |

## Import & Asset Management
| Label | Internal | Where to Find | What It Does | Requirements | Side Effects | Related |
|-------|----------|---------------|--------------|--------------|--------------|---------|
| Import | `true_vault.asset_store_import_asset` | Owned asset card/details | Downloads (if needed) and imports | Owned; online if not cached | Objects/materials/nodes added | Import Assets |
| Cancel Import | `true_vault.asset_store_cancel_import` | During download bar | Cancels active download | Active download | Download aborted | Import Assets |
| Check for Updates | `true_vault.asset_store_asset_update_check` | Variant dialog | Checks remote version updates | Online | Possibly updates version list | Manage Variants & Updates |
| Reload | `true_vault.asset_store_reload` | Browser header | Reloads cache & refreshes queries | None | Data refreshed | Offline & Caching |
| Fetch Page | `true_vault.asset_store_fetch_page` | Triggered internally | Loads product page data | Query context | Updates list | Browse Assets |
| Init Store | `true_vault.asset_store_init` | Startup (Assumption) | Initializes managers | None | Preloads cache | Offline & Caching |
| Add State | `true_vault.asset_store_add_state` | Internal | Pushes UI state | None | State stack grows | Navigation |

## Account & Auth
| Label | Internal | Where to Find | What It Does | Requirements | Side Effects | Related |
|-------|----------|---------------|--------------|--------------|--------------|---------|
| Sign Out | `true_vault.sign_out` | Menu / Account | Ends session | Signed in | Session cleared | Auth Flow |
| Delete Account | `true_vault.delete_user` | Account settings | Deletes user (irreversible) | Signed in | Data removal | Account & Profile |
| Change Email | `true_vault.change_email` | Account settings pencil | Starts email change flow | Signed in | Verification needed | Account & Profile |
| Change Name | `true_vault.change_profile_name` | Account settings pencil | Updates name | Signed in | Profile updated | Account & Profile |
| Change Username | `true_vault.change_profile_username` | Account settings pencil | Updates username | Signed in | Profile updated | Account & Profile |
| Change Password | `true_vault.change_password` | Account settings | Opens password dialog | Signed in | Password updated | Account & Profile |
| Reset Password | `true_vault.reset_password` | Auth flow (Assumption) | Starts reset sequence | Email provided | Email sent | Auth Flow |
| Confirm Email Change | `true_vault.confirm_email_change` | After change request | Confirms new email | Pending change | Session updates | Account & Profile |
| Auth Confirm | `true_vault.auth_state_confirm` | Auth screens | Advances auth state | Valid input | Moves to next state | Auth Flow |
| Auth Back | `true_vault.auth_state_back` | Auth screens | Goes to previous auth state | Previous state stored | State rewound | Auth Flow |
| Two-Factor Verify | `true_vault.two_factor_auth_verify` | MFA screen | Verifies MFA code | Code + session | MFA complete | Auth Flow |
| Two-Factor Required Base | `true_vault.two_factor_auth_required_base` | Internal | Base for MFA flow | - | - | Auth Flow |
| Check AAL | `true_vault.check_aal` | Internal/Maybe debug | Checks assurance level | Signed in | Might redirect state | Auth Flow |
| Resend Verification Email | `true_vault.resend_verification_email` | Email verification | Sends new verification link | Email captured | Email sent | Auth Flow |
| Create Repo Link | `true_vault.create_repo_link` | (If exposed) | Generates repository link | Signed in | Link copied | Extensions |
| Refresh Repo Access Token | `true_vault.refresh_repo_access_token` | (If exposed) | Refreshes token | Signed in | Token replaced | Extensions |

## Info & Misc
| Label | Internal | Where to Find | What It Does | Requirements | Side Effects | Related |
|-------|----------|---------------|--------------|--------------|--------------|---------|
| Info (question mark) | `true_vault.info` | License section | Shows license text dialog | None | Modal info | Manage Licenses |
| View Extension | `true_vault.view_extension` | Licenses manager | Opens extension details | Signed in | Possibly navigates | Manage Licenses |

## Assumptions
Operators noted as internal or surfacing uncertain UI are marked (Assumption). Remove once confirmed.

## See Also
- [Panels & Menus](panels-menus.md)
- [Properties & Filters](properties-filters.md)
