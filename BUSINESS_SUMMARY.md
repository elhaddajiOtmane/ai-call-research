# JurisVoice

## 1. The Idea
Law firms miss 15%–35% of inbound calls. In personal injury and immigration, a missed call is a client in crisis who immediately calls the next lawyer on Google, costing the firm a potential $5,000+ case. Answering services (Ruby, Smith.ai) are expensive and slow. JurisVoice solves this by deploying a 24/7 AI voice receptionist that captures every lead, performs intake, and books consultations instantly.

## 2. Brand & What It Is For
*   **Brand**: JurisVoice
*   **Purpose**: An AI receptionist built exclusively for law firms to answer calls 24/7, perform structured intake, and book consultations.
*   **Core Value**: English and Spanish bilingual capability, 24/7 responsiveness, and zero bar ethics risk (intake-only, no legal advice).

## 3. Target Audience
*   **Primary**: Immigration and Personal Injury (PI) law firms in Queens and Brooklyn, NY.
    *   *Immigration*: High need for English/Spanish bilingual intake and after-hours emergency calls (detentions, arrests).
    *   *Personal Injury*: High Google Ads ad-spend ($100–$300/click), where missed calls are extremely costly.
*   **Secondary/Backup**: HVAC, plumbing, and restoration companies (to pivot to if law firm outreach fails).

## 4. AI Voice Persona
*   **Role**: Receptionist for the firm (does not volunteer that it is AI).
*   **Tone**: Calm, reassuring, professional, and organized.
*   **Flow**:
    1. Greeting (after-hours aware).
    2. Name and callback number collection (reads back number).
    3. Case classification: Immigration / Personal Injury / Other.
    4. One-sentence situation description.
    5. Booking a consultation.
*   **Guardrails**: Must refuse legal advice (*"I cannot give legal advice, but I'll make sure the attorney has your details"*).
*   **Urgency**: Identifies keywords (*arrest, detention, ICE, accident, hospital*) and escalates them immediately.

## 5. Business & Technical Requirements
*   **Operations**: Agency-managed model. Setup and configuration handled via Vapi.
*   **Telephony**: Inbound-only (no TCPA outbound risk).
*   **Pricing**: $500–$1,500 setup fee + $250–$500/month retainer.
*   **Integrations**: Calendar booking (Cal.com or Calendly) and CRM integration. Post-call summaries and recordings sent via email/webhook.
*   **Budget Guardrails**: Total startup costs under $500 (Vapi usage, phone numbers, domain). LLC deferred.
