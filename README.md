# Better Copy as Path

A simple Windows context menu extension to copy the full path of any file or folder to the clipboard, without quotes. This version runs as an administrator to ensure full functionality in all cases.

-----

### 📂 Repository Structure

```
BetterCopyAsPath/
│
├── README.md
├── LICENSE
├── install_RUN_AS_ADMIN.bat
├── uninstall_RUN_AS_ADMIN.bat
│
└── src/
    ├── BetterCopyPath.ps1
    └── BetterCopyPath.vbs
```

-----

### ⚡ Installation

#### Download the Repository

Clone the repository:

```bash
git clone https://github.com/AleksandarOvcharov/BetterCopyAsPath.git
```

Or, download the ZIP file and extract it.

#### Run the Installer

1.  Navigate to the repository folder.
2.  Right-click **install\_RUN\_AS\_ADMIN.bat** and select **Run as Administrator**.

#### Verify

After installation, you should see “Better Copy as Path” in the context menu when you right-click any file or folder.

If you don’t see it immediately, restart Windows Explorer or log off and on again.

-----

### ❌ Uninstallation

1.  Navigate to the repository folder.
2.  Right-click **uninstall\_RUN\_AS\_ADMIN.bat** and select **Run as Administrator**.

The context menu entries will be removed. Restart Windows Explorer if needed.

-----

### ⚙️ How it Works

1.  Right-click a file or folder.
2.  Select **Better Copy as Path**.
3.  The path is copied to your clipboard without any surrounding quotes.

This works for both individual files and entire directories.

-----

### 📝 Notes

  * **BetterCopyPath.ps1** is the PowerShell script that handles the logic of copying the path to the clipboard.
  * **BetterCopyPath.vbs** is a wrapper script that launches the PowerShell script in a hidden window, preventing a command prompt from flashing on the screen.
  * The installer writes registry entries under `HKEY_CLASSES_ROOT`, which is why administrator privileges are required for installation and uninstallation.
  * To avoid UAC prompts, a future version could be adapted to use `HKEY_CURRENT_USER` (HKCU) for a per-user install instead of the system-wide `HKEY_CLASSES_ROOT` (HKCR).
