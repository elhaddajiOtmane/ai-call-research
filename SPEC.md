# SPEC — JurisVoice: AI Receptionist for Law Firms (Immigration/PI, Queens NY)

Phased build. **Phase 1 is the only thing that matters until a firm is paying.**
See DECISION.md for niche rationale and tripwire.

---

## Phase 1 — Demo Agent (Week 1) — BUILD THIS FIRST

One polished Vapi voice agent acting as receptionist for a fictional firm
("Reyes & Adler Law, Queens — immigration & personal injury").
This is the sales tool. No website, no dashboard, no funnel.

### Functional requirements
- **Greeting:** firm name, after-hours aware ("The office is currently closed, but I can take your information and book a consultation.")
- **Intake flow (strict order):**
  1. Caller name
  2. Callback phone number (read back to confirm)
  3. Case type: immigration / accident-injury / other
  4. One-sentence description of the situation
  5. Preferred callback time or consultation booking
- **Hard refusal of legal questions:** "That's exactly what the attorney will go over in your consultation — I can't give legal advice, but I'll make sure they have your details."
- **Language:** English + Spanish detection/switch (big differentiator in Queens immigration market)
- **Urgency escalation:** if caller says arrest, detention, accident just happened → flag the lead as URGENT in the summary
- **End of call:** confirm details, state callback expectation ("within one business hour during office hours")

### Technical
- Platform: Vapi (transient or saved assistant)
- Telephony: Vapi-provisioned number (Twilio under the hood) — INBOUND ONLY (no TCPA exposure)
- Post-call: Vapi webhook → email/store call summary + transcript + recording link
- Voice: pick one professional female voice, test 3, stop tuning after 2 hours — good enough beats perfect

### Done when
You can hand your phone to a stranger, they call the number, complete intake in under 3 minutes, and you receive the structured summary.

---

## Phase 2 — Outreach Assets (Week 2, parallel with calling)

- Prospect list: expand from 7 → **50–100 firms** (Google Maps: Queens/Brooklyn, "immigration lawyer", "personal injury attorney"; capture firm, phone, hours, website, size)
- One-page pitch (PDF): "Replace your answering service" framing, price anchored to Ruby/Smith.ai
- Call script: open with "Call your own office at 7pm tonight and see what happens" hook
- Tracking: log every conversation in DECISION.md counter (tripwire = 20 conversations)

### Outreach channel order
1. Call the firm after hours yourself first (recon — hear their current answering experience)
2. Call during business hours, ask for owner/managing partner
3. Email only as follow-up, with demo number included ("call it right now")

---

## Phase 3 — Per-Client Onboarding Template (after client #1 signs)

- Reusable Vapi assistant config template: variables for firm name, hours, practice areas, calendar link, escalation number
- Calendar booking integration (Cal.com or Calendly free tier)
- Simple weekly report email to client: calls answered, leads captured, transcripts
- Internal checklist: signed agreement → intake questionnaire → configure → test with owner → port/forward number → live

**Internal admin panel:** only build when manual onboarding of a client takes >4 hours or at 5+ clients. Not before.

---

## Phase 4 — URL-Scrape Demo Funnel (DEFERRED — do not build before first paying client)

Architecture already documented in ai_receptionist_strategy_summary.md §4
(Firecrawl → LLM extraction → Vapi transient assistant → Supabase lead capture).
This is a scaling tool. Building it before revenue = procrastination.

---

## Budget guardrails (total < $500)
| Item | Est. cost |
|------|-----------|
| Vapi usage (demo + testing) | ~$25–50/mo |
| Phone number | ~$2–5/mo |
| Domain (jurisvoice.com, Phase 2+) | ~$12/yr |
| LLC (JurisVoice) | DEFERRED until first paying client |

## Explicit non-goals (for now)
- No customer-facing self-service dashboard
- No outbound calling (TCPA)
- No healthcare/HIPAA verticals
- No second niche until niche #1 pays
