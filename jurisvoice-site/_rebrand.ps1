# Global ZyraTalk → JurisVoice text replacement
Get-ChildItem -Path "." -Filter "*.html" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw -Encoding UTF8
    $original = $content
    
    # Brand name replacements
    $content = $content -replace 'ZryaTalk', 'JurisVoice'
    $content = $content -replace 'ZyraTalk', 'JurisVoice'
    $content = $content -replace 'Zyra Talk', 'JurisVoice'
    $content = $content -replace 'ZYRATALK', 'JURISVOICE'
    $content = $content -replace 'zyratalk', 'jurisvoice'
    $content = $content -replace 'Zyra talk', 'JurisVoice'
    
    # Button text: "Get Started" → "Request Demo" (only button text, not CSS classes)
    $content = $content -replace '>Get Started<', '>Request Demo<'
    
    # Domain
    $content = $content -replace 'www\.zyratalk\.com', 'jurisvoice.com'
    
    if ($content -ne $original) {
        [System.IO.File]::WriteAllText($_.FullName, $content, [System.Text.Encoding]::UTF8)
        Write-Output "Updated: $($_.Name)"
    } else {
        Write-Output "No changes: $($_.Name)"
    }
}

Write-Output "`nDone! All HTML files processed."
