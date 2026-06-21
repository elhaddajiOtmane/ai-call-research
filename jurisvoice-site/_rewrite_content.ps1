# Phase 1 continued: Rewrite ZyraTalk-specific content to JurisVoice legal content
# Targets: index.html — process steps, business-loss section, service-calls section

$file = "index.html"
$content = Get-Content $file -Raw -Encoding UTF8

# ===== PROCESS STEPS: Rewrite from plumbing/HVAC to legal intake =====

# Step 1
$content = $content -replace 'The AI CSR answers your missed phone calls and speaks to your customer just like your team members would', 'Your AI receptionist answers every inbound call with your firm name, collects caller details, and determines case type — immigration, personal injury, or other.'

# Step 2
$content = $content -replace 'Integrations\? Say no more\. We run the most advanced workflows in the industry to ensure\s+your calls don.t just get answered, but create jobs, customer records, follow up tasks,\s+and anything else you can imagine', 'Every intake is automatically logged with structured data: caller name, callback number, case type, situation summary, and urgency level. Integrates with your CRM, calendar, and email.'
$content = $content -replace 'Step 2: Integrate your systems', 'Step 2: Structured intake logged'

# Step 3 — Plumbing emergency reference
$content = $content -replace 'Notify the right people! We use advanced Al to parse key elements out of a call to ensure\s+the right person is notified at the right time! Plumbing emergency at 3AM\? We.ll call\s+and text your on-call technician to make sure that customer doesn.t go unassisted', 'Urgent keywords like arrest, detention, ICE, accident, or hospital trigger immediate URGENT flags. The managing attorney gets a call, text, and email within seconds — no lead waits until morning.'

# Step 4
$content = $content -replace 'Every call comes with a detailed report to show you a transcript, recording, key data\s+points, company notes, and who was notified', 'Every call generates a structured summary with full transcript, recording link, case type classification, urgency flag, and callback preferences — delivered to your inbox instantly.'

# ===== BUSINESS LOSS SECTION =====
$content = $content -replace 'Businesses Are Leaking Revenue', 'Law Firms Are Losing Cases Every Night'
$content = $content -replace 'Missed calls cost businesses thousands, and in\s+some cases millions, in lost opportunities\. Our data shows that most businesses miss\s+anywhere from 15%-35% of their phone calls\.', 'Every unanswered call at 7pm is a $5,000+ case walking to your competitor. Most law firms miss 15-35% of inbound calls. In immigration and PI, those missed calls are people in crisis who will call the next firm on Google.'

# ===== "HERE'S WHAT HAPPENS" SECTION =====
$content = $content -replace "This is an example of someone scheduling an appointment\.", "See how JurisVoice captures a lead from a missed after-hours call."
$content = $content -replace "Here&#x27;s What Happens Behind the Scenes", "How JurisVoice Captures Every Lead"

# ===== AUDIO SECTION LABELS =====
$content = $content -replace 'An immigration intake that booked an \$8,500 consultation', 'Immigration Visa Renewal — $8,500 Consultation Booked'
$content = $content -replace 'Urgent PI Lead Transferred to Attorney', 'Personal Injury — Urgent Lead Routed to Attorney'
$content = $content -replace 'Consultation Rescheduling', 'After-Hours Consultation Booking'
$content = $content -replace 'Immigration Consultation Intake', 'Spanish-Language Immigration Intake'

# ===== SAVE =====
[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
Write-Output "index.html content rewrite complete"
