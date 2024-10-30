

# VSCode Registry Script

This PowerShell script automates the process of registering Visual Studio Code to open directly from the Windows File Explorer by typing `code` in the address bar. It dynamically finds the current user’s name and the installation path of Visual Studio Code, eliminating the need for manual input.

## Features

- Automatically detects the current username and the path to the Visual Studio Code executable.
- Creates the necessary registry entries to allow opening VS Code from the File Explorer.
- Ensures that the setup is hassle-free for users who want quick access to VS Code.

## Usage

1. Download or clone the repository to your local machine.
2. Open PowerShell as an administrator.
3. Navigate to the directory where the script is located.
4. Run the script using the following command:
   ```powershell
   .\RegisterVSCode.ps1
   ```
