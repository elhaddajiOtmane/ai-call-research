---
version: alpha
name: ZyraTalk-design-system
description: An inspired interpretation of ZyraTalk's design language — an AI call center SaaS brand built on electric blue, deep navy, and a relentless revenue-outcome framework. The system alternates dark navy fear-hook sections with white proof sections, pairs heavy-weight sans-serif display headlines with green dollar-outcome callouts, and uses a single "Request Demo" CTA repeated throughout the page. Dashboard revenue composites anchor the hero; playable call-recording cards with dollar amounts and 5-star ratings anchor the social-proof band.

colors:
  primary: "#1D6FEB"
  primary-deep: "#1558CC"
  primary-press: "#0E3E9A"
  primary-soft: "#4D90FE"
  primary-bg-subdued: "#EBF4FF"
  navy-900: "#070D1F"
  navy-700: "#0A1640"
  navy-500: "#112060"
  on-dark: "#FFFFFF"
  on-dark-muted: "#9CA3AF"
  canvas: "#FFFFFF"
  canvas-ice: "#F5F8FF"
  hairline: "#E5E7EB"
  revenue-green: "#22C55E"
  revenue-green-bg: "#F0FFF4"
  star-gold: "#FBBF24"
  text-primary: "#070D1F"
  text-secondary: "#374151"
  text-muted: "#6B7280"
  on-primary: "#FFFFFF"

typography:
  display-xxl:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 64px
    fontWeight: 800
    lineHeight: 1.05
    letterSpacing: -1.5px
  display-xl:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 48px
    fontWeight: 800
    lineHeight: 1.1
    letterSpacing: -1.0px
  display-lg:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 36px
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: -0.5px
  display-md:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 28px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: -0.3px
  heading-lg:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 22px
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: -0.2px
  heading-md:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.35
    letterSpacing: 0
  heading-sm:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  dollar-outcome:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 20px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: -0.2px
    fontFeature: tnum
  body-lg:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.65
    letterSpacing: 0
  body-md:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: 0
  body-sm:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: 0
  button-md:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.0
    letterSpacing: 0
  button-sm:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 14px
    fontWeight: 600
    lineHeight: 1.0
    letterSpacing: 0
  eyebrow:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: 0.08em
    textTransform: uppercase
  caption:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  revenue-dashboard:
    fontFamily: "'Inter', 'SF Pro Display', system-ui, -apple-system, sans-serif"
    fontSize: 32px
    fontWeight: 800
    lineHeight: 1.0
    letterSpacing: -0.5px
    fontFeature: tnum

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 20px
  pill: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  section: 80px
  hero: 120px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 24px
  button-primary-pressed:
    backgroundColor: "{colors.primary-press}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 24px
  button-ghost-on-dark:
    backgroundColor: "transparent"
    textColor: "{colors.on-dark}"
    border: "1px solid rgba(255,255,255,0.3)"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 24px
  card-use-case:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.text-primary}"
    border: "1px solid {colors.hairline}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.lg}"
    padding: 20px
  card-feature-icon:
    backgroundColor: "{colors.canvas-ice}"
    textColor: "{colors.text-primary}"
    border: "none"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  card-testimonial:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.text-secondary}"
    border: "1px solid {colors.hairline}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 28px
  section-dark:
    backgroundColor: "{colors.navy-900}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-lg}"
    padding: "{spacing.section} 0"
  section-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.text-primary}"
    typography: "{typography.body-lg}"
    padding: "{spacing.section} 0"
  step-circle:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.heading-sm}"
    rounded: "{rounded.pill}"
    size: 40px
  dollar-chip:
    backgroundColor: "{colors.revenue-green-bg}"
    textColor: "{colors.revenue-green}"
    typography: "{typography.dollar-outcome}"
    rounded: "{rounded.sm}"
    padding: 4px 8px
  star-rating:
    color: "{colors.star-gold}"
    fontSize: 14px
  play-button:
    backgroundColor: "{colors.primary-bg-subdued}"
    iconColor: "{colors.primary}"
    rounded: "{rounded.pill}"
    size: 40px
  revenue-dashboard-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.text-primary}"
    border: "1px solid {colors.hairline}"
    rounded: "{rounded.xl}"
    padding: 24px
    shadow: "0 20px 60px rgba(7,13,31,0.12)"
  eyebrow-tag:
    backgroundColor: "{colors.primary-bg-subdued}"
    textColor: "{colors.primary}"
    typography: "{typography.eyebrow}"
    rounded: "{rounded.pill}"
    padding: 4px 12px
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.text-primary}"
    typography: "{typography.body-md}"
    padding: 16px 24px
    border-bottom: "1px solid {colors.hairline}"
  footer-dark:
    backgroundColor: "{colors.navy-900}"
    textColor: "{colors.on-dark-muted}"
    typography: "{typography.caption}"
    padding: "64px 24px"
---

## Overview

ZyraTalk's design language is built around a single psychological framework: **pain → proof → action**. Every section either surfaces a fear (missed calls = lost revenue) or eliminates it (here's a real $23,720 call recording). The page alternates between white proof sections and deep navy urgency sections — the polarity shift is intentional and mechanical. Light = features, credibility, and process. Dark = loss aversion, fear of inaction, and the final CTA push.

The color system has two roles. **Electric blue** (`{colors.primary}` — `#1D6FEB`) is the brand's singular CTA color — every button, every link, every icon accent. **Revenue green** (`{colors.revenue-green}` — `#22C55E`) appears exclusively on dollar outcomes — the visual cue that says "this call made money." Nothing else in the palette is green. **Deep navy** (`{colors.navy-900}` — `#070D1F`) is the brand's urgency surface.

Typography is the opposite of Stripe. Where Stripe signals editorial confidence through thin weights, ZyraTalk signals decisiveness through **heavy weight (700–800)**. The hero headline at 64px/800 is a punch. The dollar outcome type uses `tnum` (tabular figures) so revenue numbers align in dashboards and comparison cards. Inter is the canonical open-source choice — at weight 800 with -1.5px tracking it reads as bold and modern without feeling aggressive.

**Key Characteristics:**
- Alternating dark navy / white section rhythm — dark = urgency, white = proof.
- Revenue dashboard as hero visual — the first thing visitors see is a cumulative dollar total ($519,162.58), not a product screenshot.
- Dollar-outcome use-case cards with play buttons and 5-star ratings — "hear a $23,720 call" is the proof format.
- Single CTA "Request Demo" repeated at every section transition — no pricing page, no free trial, forces a conversation.
- Numbered step circles in blue connect a 4-step process explanation with real UI screenshots.
- Eyebrow tags ("STEP 1 · STEP 2") in uppercase tracked small type orient users without visual weight.
- Guaranteed ROI framing eliminates the primary objection without discounting.

## Colors

> **Source pages:** `zyratalk.com/` (homepage), from visual analysis and content scrape.

### Brand & Accent
- **Electric Blue** (`{colors.primary}` — `#1D6FEB`): The brand's singular CTA color. All filled buttons, icon accents, link emphasis, numbered step circles.
- **Electric Blue Deep** (`{colors.primary-deep}` — `#1558CC`): Hover state for primary. Used in hover transitions and gradient hints.
- **Electric Blue Press** (`{colors.primary-press}` — `#0E3E9A`): Active/pressed state. Darkens by ~40% from primary.
- **Electric Blue Soft** (`{colors.primary-soft}` — `#4D90FE`): Lighter blue for eyebrow labels, icon bg on dark sections.
- **Electric Blue Subdued** (`{colors.primary-bg-subdued}` — `#EBF4FF`): Pale blue fill for play button circles, eyebrow tag backgrounds.
- **Revenue Green** (`{colors.revenue-green}` — `#22C55E`): Dollar outcome color. Used exclusively on $ amounts — "$23,720 job" — never for UI decoration.
- **Revenue Green Bg** (`{colors.revenue-green-bg}` — `#F0FFF4`): Pale green chip background behind dollar amounts.
- **Star Gold** (`{colors.star-gold}` — `#FBBF24`): 5-star rating color on use-case cards.

### Surface
- **Canvas** (`{colors.canvas}` — `#FFFFFF`): Default page background for light sections.
- **Canvas Ice** (`{colors.canvas-ice}` — `#F5F8FF`): Slightly cool off-white. Used as alternating feature card backgrounds.
- **Hairline** (`{colors.hairline}` — `#E5E7EB`): 1px card borders and section dividers.

### Dark Surfaces
- **Navy 900** (`{colors.navy-900}` — `#070D1F`): Dark section background — fear-hook and CTA bands.
- **Navy 700** (`{colors.navy-700}` — `#0A1640`): Cards and raised surfaces on dark sections.
- **Navy 500** (`{colors.navy-500}` — `#112060`): Subtle distinction layer on navy surfaces (borders, icon bg).

### Text
- **Text Primary** (`{colors.text-primary}` — `#070D1F`): Default headlines and body on light sections. Near-black navy, not pure black.
- **Text Secondary** (`{colors.text-secondary}` — `#374151`): Sub-headlines, feature descriptions on light surfaces.
- **Text Muted** (`{colors.text-muted}` — `#6B7280`): Helper text, captions, FAQ body on light surfaces.
- **On Dark** (`{colors.on-dark}` — `#FFFFFF`): Headlines on dark navy sections.
- **On Dark Muted** (`{colors.on-dark-muted}` — `#9CA3AF`): Body copy on dark navy sections. Desaturated to prevent eye strain.
- **On Primary** (`{colors.on-primary}` — `#FFFFFF`): Button label color on blue fills.

### Semantic
Revenue green is the only semantic color on marketing surfaces. Error / success states are dashboard-product-specific and do not appear on the marketing page.

## Typography

### Font Family

The display and body tier uses **Inter** (open-source, Google Fonts) at weights 400, 600, 700, and 800. Unlike editorial-density brands (Stripe, Linear), ZyraTalk uses heavy weights as a signal of decisiveness and action. Weight 800 at 64px with -1.5px tracking reads as a confident punch — this is what "stop missing revenue" looks like in type.

The `tnum` (tabular figures) feature is applied on all dollar amounts, revenue dashboard numbers, and numeric stat cards so figures align correctly across columns.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 64px | 800 | 1.05 | -1.5px | Hero headline |
| `{typography.display-xl}` | 48px | 800 | 1.1 | -1.0px | Major section opener |
| `{typography.display-lg}` | 36px | 700 | 1.15 | -0.5px | Section headline |
| `{typography.display-md}` | 28px | 700 | 1.2 | -0.3px | Card headline / sub-section |
| `{typography.heading-lg}` | 22px | 700 | 1.25 | -0.2px | Step title, feature heading |
| `{typography.heading-md}` | 18px | 600 | 1.35 | 0 | Card sub-heading |
| `{typography.heading-sm}` | 16px | 600 | 1.4 | 0 | Mini label, nav item |
| `{typography.dollar-outcome}` | 20px | 700 | 1.3 | -0.2px | Dollar result on use-case cards (green, `tnum`) |
| `{typography.body-lg}` | 18px | 400 | 1.65 | 0 | Hero subheadline / lead paragraph |
| `{typography.body-md}` | 16px | 400 | 1.6 | 0 | Default body copy |
| `{typography.body-sm}` | 14px | 400 | 1.55 | 0 | Card body, testimonial copy |
| `{typography.button-md}` | 16px | 600 | 1.0 | 0 | Primary button label |
| `{typography.button-sm}` | 14px | 600 | 1.0 | 0 | Compact button label |
| `{typography.eyebrow}` | 11px | 600 | 1.2 | 0.08em | Step labels, section eyebrows (uppercase) |
| `{typography.caption}` | 13px | 400 | 1.4 | 0 | Helper text, footer links |
| `{typography.revenue-dashboard}` | 32px | 800 | 1.0 | -0.5px | Cumulative revenue total in dashboard hero (`tnum`) |

### Principles
- **Heavy weight is the brand.** Display tiers use weight 700–800. This signals urgency and confidence, not editorial restraint.
- **Negative tracking on large sizes only.** -1.5px at 64px scaling to 0 at 18px. At body sizes, tracking is neutral — the brand's urgency comes from weight and copy, not tracking alone.
- **Tabular figures on money.** All dollar amounts, cumulative totals, and stat cards use `font-feature-settings: "tnum"`. The brand's revenue proof depends on legible, aligned numbers.
- **Dollar outcomes in green.** `{colors.revenue-green}` is reserved for monetary results only. It conditions the reader to associate green text with ROI proof.
- **Uppercase eyebrows.** Section and step labels use `{typography.eyebrow}` — uppercase, 11px, tracked at 0.08em. This creates visual hierarchy without adding weight.

### Note on Font Choice
Inter is canonical. At weight 800 with negative tracking, it closely matches ZyraTalk's heavy-impact display style. Avoid thin or light weights — they remove the brand's urgency signal. For the revenue dashboard number specifically, Inter 800 + `tnum` + -0.5px tracking at 32px is the closest open-source match.

## Layout

### Spacing System
- **Base unit**: 8px (with 2 / 4 / 12 sub-tokens for fine work).
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.section}` 80px · `{spacing.hero}` 120px.
- **Section padding**: 80px vertical on standard sections; 120px on the hero.
- **Card internal padding**: 20–28px depending on card type.

### Grid & Container
- Marketing pages center in a ~1200px max-width container.
- Use-case cards: 2-col grid on desktop (left: call metadata + play button, right: conversation screenshot).
- Feature icon grid: 2×3 on desktop, 1-col on mobile.
- Testimonials: horizontally scrollable strip of 6 cards on desktop, 1-col on mobile.

### Section Alternation Pattern

The page alternates dark/light mechanically:

1. **Hero** — white bg, left headline + right dashboard mockup
2. **Use-case cards** — white bg, "Ready To Be Mind Blown?" headline + 2-col card grid
3. **Behind the scenes** — white bg, 4-step horizontal process
4. **Fear hook** — dark navy bg, "Businesses Are Leaking Revenue" + CTA
5. **Why us** — white bg, 2×3 icon feature grid
6. **Testimonials** — white bg, scrollable quote cards
7. **Webchat upsell** — dark navy bg, cross-sell panel
8. **FAQ** — white bg, accordion

### Whitespace Philosophy
Generous section padding (80px) creates visual breathing room between the dark/light alternations. Within sections, card grids use 16–20px gaps — tight enough to feel grouped, loose enough to scan individually. The hero uses 120px top padding to separate the hero headline from the nav.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 | Flat, no shadow | Default surface, use-case cards on white |
| 1 | `box-shadow: 0 4px 16px rgba(7,13,31,0.08)` | Feature cards, nav bar on scroll |
| 2 | `box-shadow: 0 20px 60px rgba(7,13,31,0.12)` | Revenue dashboard hero composite |
| Dark band | Navy 900 fill | Fear-hook and CTA sections — color IS the depth signal |

### Decorative Depth
The brand uses the dark/light polarity as depth rather than shadows. Dark navy sections feel "below" the page — heavy, urgent. White sections feel lifted and airy. Shadows are reserved for the hero revenue dashboard composite only.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Dollar chip inner radius, table chrome |
| `{rounded.sm}` | 6px | Small tags, badge pills |
| `{rounded.md}` | 8px | Primary buttons, form inputs |
| `{rounded.lg}` | 12px | Use-case cards, feature icon cards |
| `{rounded.xl}` | 16px | Testimonial cards |
| `{rounded.xxl}` | 20px | Revenue dashboard mockup chrome |
| `{rounded.pill}` | 9999px | Step circles, play button circles, eyebrow tags |

### Visual Language
Buttons use `{rounded.md}` (8px) — not pills, not sharp rectangles. This reads as decisive and modern without the roundness of consumer apps. Use-case cards and feature cards use `{rounded.lg}` (12px). The revenue dashboard mockup uses the largest radius (`{rounded.xxl}`) to signal "premium product UI."

## Components

### Buttons

**`button-primary`** — the sole CTA across the entire page.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button-md}`, padding `12px 24px`, rounded `{rounded.md}` 8px.
- One instance per section. Copy is always "Request Demo" — never "Sign Up," "Get Started," or "Try Free."
- Hover shifts background to `{colors.primary-deep}`.
- Pressed state `button-primary-pressed` shifts to `{colors.primary-press}`.

**`button-ghost-on-dark`** — secondary action on dark navy sections only.
- Transparent background, white text, 1px semi-transparent white border. Used alongside `button-primary` when a second action exists (rare).

### Cards & Containers

**`card-use-case`** — the brand's primary proof format.
- White background, 1px `{colors.hairline}` border, `{rounded.lg}` 12px, padding 20px.
- Structure: play button circle (top-left) → dollar outcome in `{colors.revenue-green}` with `{typography.dollar-outcome}` → use-case title in `{typography.heading-md}` → 5-star rating strip → conversation screenshot thumbnail.
- The play button (`{component.play-button}`) uses `{colors.primary-bg-subdued}` fill with a blue play icon — signals interactive audio without breaking the white-card aesthetic.

**`card-feature-icon`** — feature benefit grid card.
- Background `{colors.canvas-ice}`, no border, `{rounded.lg}` 12px, padding 24px.
- Structure: icon (SVG, 24px, blue) → heading `{typography.heading-md}` → body `{typography.body-sm}` in `{colors.text-secondary}`.
- Grid: 2×3 on desktop (Best Support, #1 Product, Personalized, Industry Experts, Guaranteed ROI, + 1 spare slot).

**`card-testimonial`** — customer quote card.
- White background, 1px `{colors.hairline}` border, `{rounded.xl}` 16px, padding 28px.
- Structure: customer avatar (circle, 44px) → name `{typography.heading-sm}` → quote mark icon → quote body `{typography.body-sm}` in `{colors.text-secondary}`.
- Rendered as a horizontally-scrollable strip — all 6 cards visible at desktop, scroll-snapping on mobile.

**`revenue-dashboard-card`** — hero right-column visual.
- White background, `{rounded.xxl}` 20px, padding 24px, Level 2 shadow.
- Contains: cumulative revenue total in `{typography.revenue-dashboard}` + `{colors.text-primary}` → green trend line → job count metric → recent call log rows in `{typography.body-sm}`.
- This card IS the brand's proof of concept — it should always be visible above the fold on desktop.

### Section Containers

**`section-dark`** — fear-hook and upsell sections.
- Background `{colors.navy-900}`, padding `{spacing.section}` (80px) vertical.
- Text hierarchy: white `{typography.display-lg}` headline → `{colors.on-dark-muted}` body in `{typography.body-lg}` → single `button-primary` centered below.
- Copy pattern: always frames the problem as a loss ("Businesses Are Leaking Revenue," "Missed calls cost thousands").

**`section-light`** — proof and feature sections.
- Background `{colors.canvas}`, padding `{spacing.section}` vertical.
- Eyebrow tag above headline; headline in `{typography.display-lg}`; subtitle in `{typography.body-lg}` `{colors.text-secondary}`.

### Process Steps

**`step-circle`** — numbered process indicator.
- Background `{colors.primary}`, white number in `{typography.heading-sm}`, `{rounded.pill}` (perfect circle), 40px × 40px.
- Four circles connected by a horizontal line (1px `{colors.hairline}`) on desktop; stacked vertically on mobile.
- Each step: circle → title `{typography.heading-md}` → body `{typography.body-sm}` → screenshot to the right.

### Atoms

**`dollar-chip`** — inline dollar result badge.
- Background `{colors.revenue-green-bg}`, text `{colors.revenue-green}`, type `{typography.dollar-outcome}` with `tnum`, `{rounded.sm}` 6px, padding `4px 8px`.

**`star-rating`** — 5-star strip on use-case cards.
- Five `★` glyphs at 14px in `{colors.star-gold}`. Always show all 5 stars — the brand does not show partial ratings.

**`eyebrow-tag`** — section / step label.
- Background `{colors.primary-bg-subdued}`, text `{colors.primary}`, type `{typography.eyebrow}` (uppercase, tracked), `{rounded.pill}`, padding `4px 12px`.

**`play-button`** — audio call trigger on use-case cards.
- Background `{colors.primary-bg-subdued}`, blue play icon (SVG), `{rounded.pill}`, 40×40px. Conveys interactivity without an explicit "listen" label.

### Navigation

**`nav-bar`** — top navigation.
- White background, 1px bottom border `{colors.hairline}`, padding `16px 24px`.
- Left: wordmark logo. Center: primary nav links in `{typography.body-md}` `{colors.text-secondary}`. Right: single `button-primary` "Request Demo."
- Sticks on scroll. Does not change background on scroll (stays white, not transparent-to-solid).

### Footer

**`footer-dark`** — site-wide footer.
- Background `{colors.navy-900}`, text `{colors.on-dark-muted}`, type `{typography.caption}`, padding `64px 24px`.
- 4-column link grid + logo + social icons + legal row.
- Logo uses white version on dark background.

## Copy Framework

The brand's copy follows a strict three-act structure on every page section:

### Act 1 — Pain (fear of loss)
Lead with the cost of inaction. Never lead with features.
- "Turn Missed Calls Into Revenue Opportunities"
- "Businesses Are Leaking Revenue"
- "Most businesses miss 15–35% of their phone calls"
- Pair with dark navy section for maximum urgency signal.

### Act 2 — Proof (dollar outcomes)
Eliminate skepticism with specific numbers. Never use vague claims.
- Real dollar amounts: "$23,720 from one plumbing call"
- Playable call recordings: "Listen yourself" — let the AI speak for itself
- Cumulative dashboard total: "$519,162.58 booked via AI"
- Customer quotes with full names and business context
- Pair with white sections; green dollar amounts as visual anchors.

### Act 3 — Action (single CTA, repeated)
One ask. One button. Repeated at every section transition.
- "Request Demo" — not "Sign Up," not "Try Free," not "Get Started"
- No pricing page — forces a conversation, filters for serious buyers
- "Guaranteed ROI" framing removes the final risk objection
- Pair with dark navy section to signal urgency at the decision moment.

## Do's and Don'ts

### Do
- Reserve `{colors.revenue-green}` exclusively for dollar amounts — it is the brand's proof signal.
- Alternate dark navy / white sections in strict sequence — never two consecutive dark or light sections.
- Show the revenue dashboard above the fold on desktop — it is the first proof point.
- Repeat "Request Demo" at every section transition — CTA fatigue is not a risk here; clarity is.
- Apply `font-feature-settings: "tnum"` to every dollar amount, metric, and revenue total.
- Show real dollar outcomes on every use-case card — vague claims ("save time") are off-brand.
- Use 5 full stars on every use-case card — partial ratings undermine the social proof intent.
- Use weight 700–800 on all display tiers — thin weights remove the urgency signal.

### Don't
- Don't add a second CTA ("Sign Up" alongside "Request Demo") — single CTA is the brand's conversion strategy.
- Don't use green for anything other than dollar outcomes — it will dilute the revenue-proof association.
- Don't add a pricing page or self-serve signup flow without a major brand strategy review — the demo-only model is intentional.
- Don't use light font weights (300–400) on headlines — the brand's authority comes from heavy type.
- Don't break the dark/light section alternation — the rhythm is what creates the psychological pressure/release cycle.
- Don't use vague social proof ("thousands of customers") — always use specific dollar amounts, business names, and real call outcomes.
- Don't add decorative gradients or mesh backgrounds — the brand's depth system is the dark/light polarity, not color effects.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Wide | ≥ 1440px | Full 1200px container; revenue dashboard at full composite scale |
| Desktop | 1024–1440px | Default layout; use-case 2-col; feature icon 2×3 |
| Tablet | 768–1023px | Use-case 1-col; feature icon 2-col; process steps 2×2 |
| Mobile | < 768px | All 1-col; hamburger nav; display drops 64 → 36px; process steps stacked |

### Touch Targets
- Buttons use `min-height: 48px` on mobile — slightly larger than desktop 44px for thumb accuracy.
- Play buttons scale to 48×48px on mobile (from 40×40px desktop).
- Use-case cards scroll horizontally on mobile with snap scrolling.

### Collapsing Strategy
- Display tiers stair-step: 64 → 48 → 36 → 28px through breakpoints.
- Revenue dashboard composite simplifies to a single stat card on mobile — the cumulative dollar total only, no call log rows.
- Process steps stack vertically on mobile with the screenshot below each step text.
- Testimonial strip switches from horizontal scroll to a single-card swipe on mobile.
- Dark/light section rhythm is preserved at all breakpoints — never collapse it into a single background.

## Iteration Guide

1. Focus on ONE component or section at a time.
2. Reference tokens directly (`{colors.primary}`, `{colors.revenue-green}`, `{typography.dollar-outcome}`).
3. Preserve the dark/light alternation — any new section must be categorized as either a pain (dark) or proof (light) section.
4. New use-case cards must include: play button + dollar amount + 5 stars + conversation screenshot.
5. New CTA copy must be "Request Demo" unless there is a deliberate strategy change — document the reason.
6. Apply `tnum` to every new money/numeric element.
7. Run all new dollar amounts through `{typography.dollar-outcome}` + `{colors.revenue-green}` — never render revenue in black or blue.
8. The revenue dashboard hero composite is the brand's single most important visual — do not replace it with a feature screenshot or illustration.
