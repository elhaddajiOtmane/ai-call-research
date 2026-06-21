# Update page titles and meta descriptions for all remaining pages
$updates = @{
    "request-demo.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "Request Demo | JurisVoice AI Receptionist for Law Firms"
        oldDesc = "Discover JurisVoice, the only AI customer service solution you need[^`"]*"
        newDesc = "Hear your AI receptionist in action. Call our demo number and experience a real legal intake call. JurisVoice - AI receptionist for immigration and personal injury law firms."
    }
    "contactus.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "Contact Us | JurisVoice AI Receptionist for Law Firms"
    }
    "legal.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "AI for Legal Firms | JurisVoice - Immigration & Personal Injury"
    }
    "use-ai-as-your-frontline.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "AI Receptionist | JurisVoice - Replace Your Answering Service"
    }
    "ai-webchat.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "AI Webchat | JurisVoice for Law Firms"
    }
    "analytics-that-tell-a-story.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "Call Analytics | JurisVoice AI Receptionist"
    }
    "home-services.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "AI for Home Services | JurisVoice"
    }
    "health-care.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "AI for Healthcare | JurisVoice"
    }
    "partners.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "Partners | JurisVoice AI Receptionist"
    }
    "privacy-policy.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "Privacy Policy | JurisVoice"
    }
    "terms.html" = @{
        oldTitle = "Automate Conversations with AI \| JurisVoice: The Ultimate Customer Service Solution"
        newTitle = "Terms of Service | JurisVoice"
    }
}

foreach ($file in $updates.Keys) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw -Encoding UTF8
        $old = $updates[$file].oldTitle
        $new = $updates[$file].newTitle
        
        # Update title tag
        $content = $content -replace "<title>$old</title>", "<title>$new</title>"
        # Update meta title
        $content = $content -replace "content=`"$old`"", "content=`"$new`""
        
        # Add favicon reference if missing
        $content = $content -replace 'href="assets/images/zyrafavicon\.png"', 'href="assets/images/jurisvoice_favicon.png"'
        
        # Add JurisVoice CSS override link if not present
        if ($content -notmatch 'jurisvoice-overrides\.css') {
            $content = $content -replace '(hubspot-demo-form\.css[^>]*>)', '$1
    <link href="assets/newweb/css/jurisvoice-overrides.css" rel="stylesheet" type="text/css">'
        }
        
        # Update logo references
        $content = $content -replace 'src="assets/newweb/images/zyratalk_logo_ev\.svg"', 'src="assets/newweb/images/jurisvoice_logo.png"'
        $content = $content -replace 'src="assets/newweb/images/jurisvoice_logo_ev\.svg"', 'src="assets/newweb/images/jurisvoice_logo.png"'
        
        # Update footer logo
        $content = $content -replace 'src="assets/newweb/images/zyratalk-footer-newlogo\.svg"', 'src="assets/newweb/images/jurisvoice_logo.png"'
        $content = $content -replace 'src="assets/newweb/images/jurisvoice-footer-newlogo\.svg"', 'src="assets/newweb/images/jurisvoice_logo.png"'
        
        # Update favicon
        $content = $content -replace 'href="assets/images/zyrafavicon\.png"', 'href="assets/newweb/images/jurisvoice_icon_mark.png"'

        # Replace Poppins font with Inter
        $content = $content -replace 'href="https://fonts\.googleapis\.com/css2\?family=Poppins[^"]*"', 'href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800&display=swap"'
        
        [System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
        Write-Output "Updated: $file"
    } else {
        Write-Output "Skipped (not found): $file"
    }
}

Write-Output "`nAll page titles and logos updated."
