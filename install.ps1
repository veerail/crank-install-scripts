#Start of Install Script

#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
 
#Install Packages with Chocolatey
choco install cinebench 7zip vlc discord googlechrome ubisoft-connect epicgameslauncher steam spotify -y
