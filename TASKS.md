# JurisVoice Rebrand — Task Tracker

## Phase 1 — Logo & Text Replacement
- [ ] Global find/replace "ZyraTalk" → "JurisVoice" across all HTML files
- [ ] Replace logo references (header, footer, favicon)
- [ ] Rewrite index.html hero + section text
- [ ] Rewrite about-us.html text
- [ ] Update page `<title>` and `<meta>` tags across all pages
- [ ] Replace "Get Started" button text → "Request Demo"
- [ ] Rewrite use case cards (plumbing/HVAC → legal intake)
- [ ] Rewrite testimonials for law firm context
- [ ] Rewrite process steps for legal workflow
- [ ] Add jurisvoice-overrides.css link to all pages
- [ ] Replace Poppins font → Inter across all pages
- [ ] Rewrite request-demo.html body text
- [ ] Update nav menu structure across all pages
- [ ] Rewrite FAQ for legal receptionist questions

---

## Phase 2 — Asset Audit & Prompt Generation

### Task: Asset Audit Agent
> **What it does:** Read EVERY existing image/video/audio asset referenced in the HTML files. For each one:
> 
> 1. **Look at the filename and its `alt` text** to understand what the asset depicts
> 2. **Determine if it references the OLD brand** (ZyraTalk logo, ZyraTalk-specific screenshots, ZyraTalk branding) or is **NEUTRAL** (generic icons, abstract shapes, decorative SVGs, generic UI patterns)
> 3. **Decision:**
>    - If **NEUTRAL** (generic icon, abstract shape, decorative element, universal UI element) → **KEEP AS-IS**, no prompt needed
>    - If **OLD BRAND** (contains ZyraTalk name, ZyraTalk-specific imagery, ZyraTalk screenshots, industry-specific images that don't match legal/law) → **GENERATE A REPLACEMENT PROMPT** based on what the image does in context, rewritten for the JurisVoice business (AI receptionist for immigration & personal injury law firms)
> 4. **Important rules for prompts:**
>    - The replacement prompt should NOT include "JurisVoice" in the image unless the original asset had the brand name "ZyraTalk" in it (e.g., logos, branded screenshots)
>    - If the original was a generic "dashboard screenshot" without brand name visible, the replacement prompt should also be a generic dashboard screenshot — just themed for legal intake instead of home services
>    - Use JurisVoice brand colors in prompts: Deep Navy `#070D1F`, Electric Blue `#1D6FEB`, Revenue Green `#22C55E` (for dollar amounts only)
>    - Match the approximate dimensions/aspect ratio of the original
> 
> **Input:** All HTML files in `jurisvoice-site/` + all files in `assets/newweb/images/`
> **Output:** A markdown file `ASSET-PROMPTS.md` with a table:
> | Asset Filename | Used In (page) | What It Depicts | Decision | Replacement Prompt (if needed) |

- [ ] Scan all image `src=` references across all HTML files
- [ ] Cross-reference with actual files in `assets/newweb/images/`
- [ ] Read alt text and filenames to understand each asset's purpose
- [ ] Categorize each as KEEP (neutral) or REPLACE (old brand / wrong industry)
- [ ] Generate replacement prompts for REPLACE items
- [ ] Output `ASSET-PROMPTS.md` in project root

---

## Phase 3 — Design/CSS Refinement
- [ ] Enforce dark/light section rhythm
- [ ] Remove irrelevant sections (webchat, home services, healthcare)
- [ ] Add bilingual feature highlight
- [ ] Add urgency detection section
- [ ] Wire up legal_call.mp3 audio player
- [ ] Responsive review

---

## Phase 4 — [OPTIONAL] Next.js Migration
- [ ] Deferred — not needed for launch

---

## QA Agent (runs LAST, after all other tasks complete)

### Task: Full Site QA Check
> **What it does:** After all rebrand work is finished, scan the entire `jurisvoice-site/` directory for any remaining issues:
> 
> 1. **Old brand text:** Search all HTML, CSS, JS files for any remaining references to:
>    - `ZyraTalk`, `Zyra Talk`, `ZYRATALK`, `zyratalk`, `ZryaTalk`
>    - `www.zyratalk.com`
>    - Any old company-specific text that wasn't caught (old testimonial names, old phone numbers, old addresses)
> 2. **Broken image references:** Check every `src=` attribute in HTML files and verify the referenced file actually exists in the assets folder
> 3. **Old brand images still in use:** Check if any image with `zyra` in its filename is still referenced
> 4. **Missing CSS override:** Verify every HTML page has the `jurisvoice-overrides.css` stylesheet linked
> 5. **Font consistency:** Verify no page still loads Poppins instead of Inter
> 6. **Button text:** Verify no "Get Started" or "Sign Up" button text remains (should all be "Request Demo")
> 7. **External links:** Flag any links still pointing to `zyratalk.com` or ZyraTalk social media
> 8. **HubSpot/tracking:** Flag any ZyraTalk-specific tracking codes (Google Analytics ID `AW-952317725`, HubSpot portal `5027906`) that may need updating
> 
> **Output:** A markdown report `QA-REPORT.md` with:
> - ✅ Passed checks
> - ❌ Failed checks with file, line number, and what was found
> - Summary count of issues

- [ ] Run text scan for old brand references
- [ ] Run broken image check
- [ ] Run CSS/font consistency check
- [ ] Run button text audit
- [ ] Run external links audit
- [ ] Generate `QA-REPORT.md`
