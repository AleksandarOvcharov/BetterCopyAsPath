Set objShell = CreateObject("WScript.Shell")
Set objArgs = WScript.Arguments

' Предаваме първия аргумент (файл или папка) към PowerShell скрипта
cmd = "powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File """ & _
      Replace(WScript.ScriptFullName, ".vbs", ".ps1") & """ """ & objArgs(0) & """"

objShell.Run cmd, 0, True
