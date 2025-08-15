---
title: Guide Design Spec (Internal)
summary: Standard structure and UX patterns for TrueVAULT user guides.
icon: material/hammer-wrench
hide:
  - navigation
---

# Guide Design Spec (Internal)

Use this template when creating or refactoring guides.

## Section Order
1. Front matter (title = H1)
2. Intro (1–2 sentence purpose tagline)
3. At a Glance (card grid) – required
4. Prerequisites (checklist) – if actionable preconditions exist
5. Core Flows / Steps (may use content tabs for variants)
6. Supplementary Sections (e.g. Gallery, Content Sections) – optional
7. Progress / State (if downloads or async operations relevant)
8. After Action / Outcomes
9. Troubleshooting (collapsible groups) – anchor: #troubleshooting
10. Next Steps (card grid linking related guides)

## Mandatory Headings & Anchors
- At a Glance: `## At a Glance`
- Troubleshooting: `## Troubleshooting {: #troubleshooting }`
- Next Steps: `## Next Steps`

If historic anchors existed (e.g. `#progress`, `#after-import`), preserve them with explicit IDs: `## Progress {: #progress }`.

## Card Grid Pattern
```
<div class="grid cards" markdown>

-   :material-ICON:{ .lg .middle } __Title__

    ---

    One-line description.  
    [:octicons-arrow-right-24: Anchor Text](#anchor)

</div>
```
Keep icon weight consistent (Material / Octicons mix allowed but prefer Material where available).

## Admonition Usage
- info: neutral context / clarifications
- tip: productivity or optimization hints
- warning: caution / potential data loss
- danger: destructive / irreversible actions
- success: outcome confirmation
- question: FAQs style
- failure: explicit failure scenario

Collapsible groups: use `???` (add `+` to default-open). Keep titles concise.

## Content Tabs
Use for mutually exclusive procedural variants (e.g. Object vs Material vs Heightmap). Avoid tabs for linear steps.

## Checklists
Use simple task list markdown for prerequisite verification or multi-step confirmation sequences.

## Icons
Prefer `:material-*:`. Keep consistent size modifiers (`.lg .middle`) only inside card grids.

## Inline IDs
When renaming a heading that had inbound links, add explicit ID with previous slug.
Example: `## Troubleshooting & Tips {: #troubleshooting }` → `## Troubleshooting {: #troubleshooting }`.

## Image / Media Placement
- Favor right-aligned responsive media with max width 50–55% when paired with text.
- Always set `aria-label` and `title` for `<video>` elements.

## Tone & Style
- Present tense, imperative for steps.
- Sentence fragments allowed in cards & table cells.
- Avoid redundant phrases ("Click the button" → "Click **Purchase**").

## Accessibility
- Provide captions for figures.
- Use checklist icons or color as decoration only; ensure text conveys meaning.

## Example Skeleton
```
---
...front matter...
---
# Title
Short purpose sentence.

## At a Glance
<div class="grid cards" markdown>
...cards...
</div>

## Prerequisites
:octicons-check-circle-fill-16: Checklist style or bullets.

## Steps
=== "Variant A"
    1. ...
=== "Variant B"
    1. ...

## Progress {: #progress }
...optional...

## After Action {: #after-action }
...outcome notes...

## Troubleshooting {: #troubleshooting }
??? question "Common issue"
    Fix.

## Next Steps
<div class="grid cards" markdown>
...related links...
</div>
```

## Change Log
- v1 (2025-08-15): Initial extraction and consolidation.
