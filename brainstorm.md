# AI Receptionist Agency — Brainstorm

Based on your notes (idea.md, MEMORY, ubiehealth, selfservice-dialzara, compititore, website.md).

## Update (June 11) — website strategy decision

### Correction: Ubie Health is a COMPETITOR, not a target customer
The ubiehealth.png screenshot shows they sell "Smart Support AI" — an AI phone agent FOR healthcare practices ("Every call answered. Every slot filled."). Press section mentions $120M+ cumulative funding. Moved mentally from `research/targets/` to competitors.

### Pattern from all landing pages: winners pick ONE vertical
- Ubie Health → healthcare practices only
- ZyraTalk → home services only ("From Missed Calls to Booked Jobs", backed by EverPro)
- Dialzara/Nextlevel → horizontal self-service (funded, race to bottom on price: $29-349/mo)

### Decision: ONE website, ONE niche — not multiple sites
Multiple websites now = split effort, zero proof anywhere, N× content/SEO/demo work. Later, when one niche works, clone the landing page per niche (same Vapi backend, different skin) — cheap to do then.

### Avoid healthcare as the FIRST niche
- Ubie is funded and entrenched there
- HIPAA: any agent handling patient info needs BAAs (Twilio/Vapi HIPAA mode), compliance overhead a <$500 solo start doesn't need
- Home services (HVAC/plumbing/electrician) has ZyraTalk, but the market is huge, owners answer their own phones, missed call = lost $300+ job, no HIPAA
- Dentists: good economics but PHI-adjacent — fine as niche #2 once there's revenue for compliance

### Steal Dialzara's two best conversion ideas (agency model, not SaaS)
1. **"Call this number now" in the hero** — a live Vapi demo agent answering 24/7. Costs almost nothing, proves the product in 30 seconds.
2. **"Enter your website → talk to YOUR AI in 2 minutes"** — form takes business URL, scrape site (name, services, hours), inject into a Vapi assistant prompt, show a number to call (or click-to-call in browser). This is the personalized-demo lead magnet, NOT a self-service platform. Buildable in a weekend with Vapi transient assistants + a scraper. Capture phone/email before showing the demo number = lead list.

### Funnel
Niche landing page → live demo number + URL-demo lead magnet → follow-up call → $500-1500 setup + $250-500/mo retainer (agency model unchanged).

## Where things stand
Goal: inbound AI call-answering agency for US small businesses. Budget <$500, 30-40 hrs/week, target $500-2k/mo side income in 12 months. Plan was: pick one niche, build one Vapi demo agent, sell $500-1500 setup + $250-500/mo retainer, delay LLC.

## What you've researched
- **Dialzara** — self-service AI receptionist builder. Dashboard has: Agents, Analytics, Live Chat, SMS Inbox, Call History, Team (roles: Admin/Manager/Operator/Viewer), Phone Settings (numbers, business verification, SMS compliance). Pricing tiers: Lite $60/mo (small biz, 60 min), Pro $99/mo (220 min), Plus $199/mo (500 min, custom prompts), Elite $349/mo (1000 min, Zapier).
- **RingCentral AI Receptionist** — enterprise-grade competitor, bundled with their phone system.
- **Zyra Talk** — another AI receptionist competitor (landing page saved).
- **Nextlevel.ai** — runs paid Google ads for AI receptionist ("Rosie" — answers calls 24/7, books appointments, takes messages, texts customers, 1,800+ businesses, 7-day free trial).
- **Ubie Health** — potential target/example business, located in a WeWork space.

## Two different business models on the table
1. **Agency model** (original plan): you set up + manage a Vapi (or similar) agent per client, charge setup fee + monthly retainer. High-touch, fewer clients needed to hit $2k/mo, but more of your time per client.
2. **Self-service SaaS model** (what Dialzara/Nextlevel do): build a platform where businesses configure their own AI receptionist. Scales better but is a much bigger build — competing directly with funded products, not realistic solo in the near term.

Pushback: building a Dialzara-style self-service platform from scratch is a multi-month dev project competing against funded, established players. The agency model is far more achievable with your current time/budget and gets you revenue faster — but you can *borrow* Dialzara's dashboard ideas (call history, SMS inbox, simple analytics) as the client-facing portal for your agency.

## Niche ideas (missed call = lost revenue)
- Dentists / orthodontists
- HVAC / plumbing / electricians
- Med spas, chiropractors, small health clinics (Ubie Health is an example of this kind of business)
- Auto repair shops
- Small coworking/wellness businesses in shared spaces (WeWork-style) — could be a good first-outreach pool since they're clustered in one location

## Feature ideas worth copying for an MVP demo
- 24/7 inbound answering, appointment booking, message-taking
- Call recording + AI summary per call (like the Rosie ad shows)
- Text-back / SMS follow-up after missed calls
- Simple client dashboard: recent calls, call recordings + summaries, basic stats (minutes used, # calls)
- Tiered pricing modeled loosely on Dialzara's structure (minutes-based tiers)

## Possible next steps
- Pick ONE niche (suggest starting with dentists or HVAC — high call volume, easy to find leads)
- Build one working Vapi demo agent for that niche
- Use the WeWork-clustered businesses idea as a low-cost first outreach list (in-person/local outreach)
- Decide: are you selling the *service* (agency) or eventually productizing into a *tool* (self-service)? Pick agency first, keep self-service as a v2 idea once you have paying clients
