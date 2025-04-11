$Key = Get-Content .\key.txt
$QueryLink = 'https://api.subbdom.com/v1/search?z='+$args[0]
$ResultFile = $args[1]
(Invoke-WebRequest  -Headers @{'x-api-key'="$Key"} -UserAgent 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36' -Uri $QueryLink -Method Get).Content | ConvertFrom-Json | Out-String -Stream | Sort-Object -Unique | Out-File $ResultFile utf8 -Force
Write-Host "Results saved to $ResultFile" -ForegroundColor Red
