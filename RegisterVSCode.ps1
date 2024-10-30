# Get the current username
$username = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name.Split('\')[1]

# Construct the path to the VS Code executable
$vsCodePath = "C:\Users\$username\AppData\Local\Programs\Microsoft VS Code\Code.exe"

# Check if the VS Code executable exists
if (Test-Path $vsCodePath) {
    # Create the registry key for VS Code
    $regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\code.exe"
    New-Item -Path $regPath -Force

    # Set the default value to the path of Code.exe
    Set-ItemProperty -Path $regPath -Name "(Default)" -Value $vsCodePath

    # Optionally, add the path if necessary
    Set-ItemProperty -Path $regPath -Name "Path" -Value "C:\Users\$username\AppData\Local\Programs\Microsoft VS Code\"

    Write-Host "VS Code has been successfully registered to open with 'code' in File Explorer."
} else {
    Write-Host "Error: VS Code executable not found at $vsCodePath. Please check the installation."
}
