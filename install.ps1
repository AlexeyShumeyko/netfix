$desktop = [Environment]::GetFolderPath("Desktop")
$targetDir = "$desktop\NetFixer"

$exeUrl = "https://github.com/AlexeyShumeyko/netfix/releases/download/v1.0/NetFixer.exe"
$exePath = "$targetDir\NetFixer.exe"

# Создание директории
if (-not (Test-Path -Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

# Скачивание exe
Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

# Запуск
Start-Process $exePath
