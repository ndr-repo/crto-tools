# $command = 'cmd /C cmdkey /list ' ; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command) ; $encodedCommand = [Convert]::ToBase64String($bytes) ; Write-Output $command ; Write-Output $encodedCommand
# cmd /C cmdkey /list
# YwBtAGQAIAAvAEMAIABjAG0AZABrAGUAeQAgAC8AbABpAHMAdAAgAA==
# powershell -nop -EncodedCommand YwBtAGQAIAAvAEMAIABjAG0AZABrAGUAeQAgAC8AbABpAHMAdAAgAA==
$command = $args[0] 
$bytes = [System.Text.Encoding]::Unicode.GetBytes($command) 
$encodedCommand = [Convert]::ToBase64String($bytes)
Write-Output $command ; Write-Output $encodedCommand ; Write-Output "powershell -nop -EncodedCommand $encodedCommand"
