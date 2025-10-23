' ==============================================
' GetWIFIPASS.vbs
' Professional WiFi Password Show/Check
' ==============================================
' Developed by: INFOTECH WIZARDS Telegram Channel
' Website: https://t.me/infotechwizards
' Copyright (c) 2024 INFOTECH WIZARDS. All Rights Reserved.
' ==============================================
' IMPORTANT LEGAL DISCLAIMER:
' This tool is created for EDUCATIONAL PURPOSES and
' LEGITIMATE NETWORK ADMINISTRATION only.
'
' USAGE TERMS:
' - Only use on networks you own or have permission to test
' - Do not use for unauthorized access to networks
' - Misuse of this tool may violate local laws
' - Users are solely responsible for their actions
' - Developer not liable for any misuse or damages
' ==============================================

On Error Resume Next

' Create professional dialog box
Set WshShell = CreateObject("WScript.Shell")
userResponse = WshShell.Popup("INFOTECH WIZARDS WiFi Password Check Tool" & vbCrLf & vbCrLf & _
                              "LEGAL DISCLAIMER:" & vbCrLf & _
                              "• For educational purposes only" & vbCrLf & _
                              "• Use only on authorized networks" & vbCrLf & _
                              "• By clicking OK you accept responsibility" & vbCrLf & vbCrLf & _
                              "Developed by: INFOTECH WIZARDS Tg Channel" & vbCrLf & _
                              "Copyright (c) 2024 INFOTECH WIZARDS" & vbCrLf & _
                              "https://t.me/infotechwizards", _
                              0, "INFOTECH WIZARDS - WiFi Password Check Tool", vbOKCancel + vbInformation)

If userResponse = vbCancel Then
    WshShell.Popup "Operation cancelled by user." & vbCrLf & vbCrLf & _
                   "Thank you for using INFOTECH WIZARDS tools!" & vbCrLf & _
                   "Copyright (c) 2024 INFOTECH WIZARDS", _
                   3, "INFOTECH WIZARDS", vbInformation
    WScript.Quit
End If

' Show processing message
WshShell.Popup "Initializing WiFi Password Recovery..." & vbCrLf & vbCrLf & _
               "• Gathering saved network profiles" & vbCrLf & _
               "• Extracting security information" & vbCrLf & _
               "• Administrator privileges required" & vbCrLf & vbCrLf & _
               "Please click YES on the UAC prompt..." & vbCrLf & vbCrLf & _
               "Copyright (c) 2024 INFOTECH WIZARDS", _
               3, "INFOTECH WIZARDS - Processing", vbInformation

' Execute the main command with professional formatting
Dim command
command = "-NoExit -Command ""& {" & _
          "Write-Host '==============================================' -ForegroundColor Cyan; " & _
          "Write-Host '    INFOTECH WIZARDS WiFi Password Check Tool' -ForegroundColor Yellow; " & _
          "Write-Host '==============================================' -ForegroundColor Cyan; " & _
          "Write-Host 'Developer: INFOTECH WIZARDS Telegram Channel' -ForegroundColor Green; " & _
          "Write-Host 'Copyright (c) 2024 INFOTECH WIZARDS' -ForegroundColor Green; " & _
          "Write-Host 'Purpose: Educational & Authorized Testing Only' -ForegroundColor Green; " & _
          "Write-Host '==============================================' -ForegroundColor Cyan; " & _
          "Write-Host ''; " & _
          "Write-Host 'Scanning saved WiFi networks...' -ForegroundColor White; " & _
          "Write-Host ''; " & _
          "netsh wlan show profiles | Select-String 'All User Profile' | ForEach-Object { " & _
          "$_.ToString().Split(':')[1].Trim() } | ForEach-Object { " & _
          "$SSID = $_; " & _
          "Write-Host 'Network: ' -NoNewline -ForegroundColor Cyan; " & _
          "Write-Host $SSID -ForegroundColor White; " & _
          "netsh wlan show profile name=$_ key=clear | Select-String 'Key Content' | ForEach-Object { " & _
          "Write-Host 'Password: ' -NoNewline -ForegroundColor Green; " & _
          "Write-Host $_.ToString().Split(':')[1].Trim() -ForegroundColor White; " & _
          "}; " & _
          "Write-Host '------------------------' -ForegroundColor DarkGray; " & _
          "}; " & _
          "Write-Host ''; " & _
          "Write-Host 'Scan completed!' -ForegroundColor Yellow; " & _
          "Write-Host '==============================================' -ForegroundColor Cyan; " & _
          "Write-Host 'For more tools visit: t.me/infotechwizards' -ForegroundColor Green; " & _
          "Write-Host 'Copyright (c) 2024 INFOTECH WIZARDS' -ForegroundColor Green; " & _
          "Write-Host 'USE RESPONSIBLY! - INFOTECH WIZARDS' -ForegroundColor Red; " & _
          "}"""

' Execute with admin privileges
CreateObject("Shell.Application").ShellExecute "powershell", command, "", "runas"

' Final message
WScript.Sleep(1000)
WshShell.Popup "WiFi Password Recovery tool launched!" & vbCrLf & vbCrLf & _
               "If no UAC prompt appeared, please:" & vbCrLf & _
               "1. Right-click and 'Run as Administrator'" & vbCrLf & _
               "2. Ensure you have admin privileges" & vbCrLf & vbCrLf & _
               "Thank you for using INFOTECH WIZARDS tools!" & vbCrLf & _
               "Copyright (c) 2024 INFOTECH WIZARDS", _
               5, "INFOTECH WIZARDS - Success", vbInformation