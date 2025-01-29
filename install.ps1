#Start of Install Script

#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
 
#Install Packages with Chocolatey
choco install cinebench 7zip vlc discord googlechrome firefox ubisoft-connect epicgameslauncher steam spotify wget sdio -y

<# Set Dns (Just testing)
netsh interface ipv4 set dnsservers "Wi-Fi" static 1.1.1.1 primary
netsh interface ipv4 set dnsservers "Wi-Fi" static 3.3.3.3 index=2

netsh interface ipv4 set dnsservers "Ethernet" static 1.1.1.1 primary
netsh interface ipv4 set dnsservers "Ethernet" static 3.3.3.3 index=2
 #>


 Write-Output done