#Start of Install Script

$MainMenu = {
    Write-Host " ***************************"
    Write-Host " *           Menu          *"
    Write-Host " ***************************"
    Write-Host
    Write-Host " 1.) Install Install Chocolatey"
    Write-Host " 2.) Install Applications"
    Write-Host " 3.) Set DNS"
    Write-Host " 4.) Everything (Except DNS For the moment)"
    Write-Host " 5.) Quit"
    Write-Host
    Write-Host " Select an option and press Enter: "  -nonewline
    }
    Clear-Host



    Do {
        Clear-Host
        Invoke-Command $MainMenu
        $Select = Read-Host
        Switch ($Select)
            {
            1 {
                #Installs Chocolatey
                Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
               }
            2 {
                #Installs packages through chocolatey
                choco install cinebench 7zip vlc discord googlechrome firefox ubisoft-connect epicgameslauncher steam spotify wget sdio -y
               }
            3 {
                #Sets Dns for WiFi
                netsh interface ipv4 set dnsservers "Wi-Fi" static 1.1.1.1 primary
                netsh interface ipv4 set dnsservers "Wi-Fi" static 3.3.3.3 index=2

                #Sets Dns For Ethernet
                netsh interface ipv4 set dnsservers "Ethernet" static 1.1.1.1 primary
                netsh interface ipv4 set dnsservers "Ethernet" static 3.3.3.3 index=2
               }
            4 {
                #Installs Chocolatey
                Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
                #Installs packages through chocolatey
                choco install cinebench 7zip vlc discord googlechrome firefox ubisoft-connect epicgameslauncher steam spotify wget sdio -y
               }
            }
        }
        While ($Select -ne 5)
        
        
#Install Chocolatey
#Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
 
#Install Packages with Chocolatey
#choco install cinebench 7zip vlc discord googlechrome firefox ubisoft-connect epicgameslauncher steam spotify wget sdio -y

<# Set Dns (Just testing)
netsh interface ipv4 set dnsservers "Wi-Fi" static 1.1.1.1 primary
netsh interface ipv4 set dnsservers "Wi-Fi" static 3.3.3.3 index=2

netsh interface ipv4 set dnsservers "Ethernet" static 1.1.1.1 primary
netsh interface ipv4 set dnsservers "Ethernet" static 3.3.3.3 index=2
 #>


 Write-Output done