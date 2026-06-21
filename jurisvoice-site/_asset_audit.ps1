# Asset Audit Agent
# Scans all HTML files for image/audio/video references
# Extracts: filename, alt text, which page uses it
# Outputs structured data for categorization

$results = @()

Get-ChildItem -Path "." -Filter "*.html" | ForEach-Object {
    $page = $_.Name
    $content = Get-Content $_.FullName -Raw -Encoding UTF8
    
    # Find all src= attributes (images, audio, video)
    $pattern = 'src="([^"]+)"'
    $matches = [regex]::Matches($content, $pattern)
    
    foreach ($m in $matches) {
        $src = $m.Groups[1].Value
        
        # Skip external scripts, CSS, and non-asset URLs
        if ($src -match '\.(js|css)$') { continue }
        if ($src -match 'hsforms|googleapis|googletagmanager|supersparks|hs-scripts') { continue }
        
        # Try to find alt text near this src
        $altPattern = 'alt="([^"]*)"[^>]*src="' + [regex]::Escape($src) + '"'
        $altPattern2 = 'src="' + [regex]::Escape($src) + '"[^>]*alt="([^"]*)"'
        
        $alt = ""
        $altMatch = [regex]::Match($content, $altPattern)
        if ($altMatch.Success) {
            $alt = $altMatch.Groups[1].Value
        } else {
            $altMatch2 = [regex]::Match($content, $altPattern2)
            if ($altMatch2.Success) {
                $alt = $altMatch2.Groups[1].Value
            }
        }
        
        # Get just the filename
        $filename = $src -replace '.+/', ''
        
        $results += [PSCustomObject]@{
            Page = $page
            Source = $src
            Filename = $filename
            AltText = $alt
        }
    }
}

# Deduplicate by source path, but keep all pages
$grouped = $results | Group-Object -Property Source

$output = @()
foreach ($group in $grouped) {
    $pages = ($group.Group | Select-Object -ExpandProperty Page -Unique) -join ", "
    $first = $group.Group[0]
    $output += [PSCustomObject]@{
        Filename = $first.Filename
        Source = $first.Source
        Pages = $pages
        AltText = $first.AltText
    }
}

# Sort and output
$output | Sort-Object Filename | ForEach-Object {
    Write-Output ("FILE: {0}" -f $_.Filename)
    Write-Output ("  SRC: {0}" -f $_.Source)
    Write-Output ("  PAGES: {0}" -f $_.Pages)
    Write-Output ("  ALT: {0}" -f $_.AltText)
    Write-Output "---"
}

Write-Output "`nTotal unique assets: $($output.Count)"
