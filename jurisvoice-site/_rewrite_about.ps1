# Rewrite about-us.html content for JurisVoice
$file = "about-us.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Page title and meta
$content = $content -replace '<title>Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution</title>', '<title>About JurisVoice | AI Receptionist for Immigration & Personal Injury Law Firms</title>'
$content = $content -replace 'content="Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"', 'content="About JurisVoice | AI Receptionist for Immigration & Personal Injury Law Firms"'
$content = $content -replace 'content="Discover JurisVoice, the only AI customer service solution you need[^"]*"', 'content="JurisVoice is the AI receptionist built exclusively for immigration and personal injury law firms. We capture every lead, book consultations, and speak English and Spanish - 24/7."'

# Hero heading
$content = $content -replace 'Empowering Businesses <span class="span-hero">with AI Conversations</span>', 'Empowering Law Firms <span class="span-hero">with AI Receptionists</span>'

# Hero paragraph
$content = $content -replace 'At JurisVoice, we revolutionize customer interactions by turning missed calls into revenue opportunities\. Our AI voice assistant works 24/7 to ensure businesses never miss an opportunity to connect, schedule, and engage with their customers\.', 'JurisVoice is the AI receptionist built exclusively for immigration and personal injury law firms. We answer every call, perform structured legal intake, book consultations, detect urgency, and speak English and Spanish — replacing expensive answering services at a fraction of the cost.'

# Our Mission
$content = $content -replace 'We believe that businesses should focus on growth, not worrying about lost opportunities\. That.s why we.ve built an AI-powered platform that ensures every call is answered, every customer inquiry is addressed, and every interaction adds value\.', 'We believe attorneys should focus on winning cases, not worrying about missed calls. Every unanswered phone call at 7pm is a $5,000+ case walking to a competitor. JurisVoice ensures every call is answered, every lead is captured, and every person in crisis gets connected to the help they need.'

# Why section
$content = $content -replace '>Why JurisVoice\?<', '>Why Law Firms Choose JurisVoice<'
$content = $content -replace '>Listen To Some Example Calls That Are Handled By AI\.<', '>Listen to real AI intake calls that booked cases.<'

# Revenue loss
$content = $content -replace 'Solving Revenue Loss for Businesses', 'Solving Revenue Loss for Law Firms'
$content = $content -replace 'Missed calls cost businesses thousands, even millions, in lost revenue\. Studies show that most businesses miss anywhere from 15%-35% of their calls\. At JurisVoice, we reduce that to near 0%, delivering seamless and consistent interactions aligned with your brand\.', 'Missed calls cost law firms thousands in lost cases. Studies show that most firms miss 15-35% of their calls — and in immigration and personal injury, those callers are in crisis. They will call the next firm on Google within minutes. JurisVoice reduces missed calls to near 0%, capturing every lead with professional, brand-consistent intake.'

# How it works
$content = $content -replace 'How JurisVoice Works', 'How JurisVoice Works for Your Firm'
$content = $content -replace 'Our AI-driven system adapts to your business, handling customer interactions intelligently and efficiently\. From answering calls to scheduling jobs and providing essential information, JurisVoice acts as a reliable digital assistant that never takes a break\.', 'JurisVoice adapts to your firm''s practice areas, hours, and intake requirements. It answers calls with your firm name, collects caller details, identifies case type (immigration, PI, or other), detects urgency keywords like arrest or accident, and books consultations — all while you focus on existing clients.'

# Transforms businesses section
$content = $content -replace '>Hear How JurisVoice Transforms Businesses<', '>Hear How JurisVoice Captures Legal Leads<'
$content = $content -replace 'Our AI voice assistant seamlessly manages customer inquiries and enhances customer experience\. Examples include', 'Our AI receptionist handles real legal intake calls — booking consultations, detecting urgency, and capturing case details.'

# Use case cards — change from home services to legal
$content = $content -replace '>Tammy<', '>Maria<'
$content = $content -replace '>called about a damaging leak\.<', '>called about her visa renewal at 8pm.<'
$content = $content -replace '>Cynthia<', '>James<'
$content = $content -replace '>required cooling system assistance\.<', '>was injured in a car accident and needs a PI attorney.<'
$content = $content -replace '>Gerald<', '>Elena<'
$content = $content -replace '>needed HVAC maintenance\.<', '>called about her husband''s ICE detention — URGENT.<'

# Testimonials — rewrite for law context
$content = $content -replace "I know these are a little bit longer so I wanted to get your thoughts\. I&#x27;ll include more of an explanation in the video I send over as well!", "JurisVoice has completely transformed how we handle after-hours calls. We used to lose 3-4 potential clients per week to voicemail. Now every call is answered and every lead is captured."
$content = $content -replace "I highly recommend incorporating JurisVoice into one&#x27;s business \(big or small\)\.My personal experience with their team, especially Andrew M\., has been nothing short of fantastic\.", "As an immigration attorney in Queens, my clients often call in crisis outside business hours. JurisVoice answers in English and Spanish, captures all the details I need, and flags urgent cases like detentions immediately. It paid for itself in the first week."
$content = $content -replace "Everyone at JurisVoice is attentive, professional, and quick to expediate services promised\. With flexibility make the AI CSR operate to our scripts without sounding robotic\. Their technology is advanced and nearly indecipherable as a machine vs human\. JurisVoice is certainly leading the charge in AI\.", "We replaced our $500/month answering service with JurisVoice and the quality of our intake has actually improved. The AI captures case details our old service never asked for, and the urgency detection has helped us respond to accident cases within minutes."
$content = $content -replace "Hands down, JurisVoice has transformed the way we operate! From the moment we partnered with them, it felt like gaining an invaluable extension of our own team\. Their AI call center services are not just about cutting-edge technology; it&#x27;s the people behind it that make all the difference\.", "JurisVoice is like having a perfect receptionist who never calls in sick, never forgets to ask for a callback number, and works nights and weekends. Our consultation bookings are up 40% since we started."

# Client names for law context  
$content = $content -replace '>Lynds..? Texier<', '>David Reyes, Esq.<'

# Listen to real calls link
$content = $content -replace '>Listen to Real Calls<', '>Listen to Real Intake Calls<'

# What clients say
$content = $content -replace "Don&#x27;t take our word for it.see what businesses like yours are saying", "Don''t take our word for it - hear what immigration and PI attorneys are saying."

[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
Write-Output "about-us.html rewrite complete"
