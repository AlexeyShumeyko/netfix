$exeUrl = "https://raw.githubusercontent.com/AlexeyShumeyko/netfixer/main/build/NetFixer.exe"
$targetDir = "$env:LOCALAPPDATA\NetFixer"
$exePath = "$targetDir\NetFixer.exe"

# Создание директории
if (-not (Test-Path -Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

# Скачивание exe
Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

# Запуск
Start-Process $exePath
