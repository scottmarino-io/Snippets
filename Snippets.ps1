Set-ExecutionPolicy Unrestricted -Force
Install-PackageProvider -Name NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
Install-Script -Name Install-VSCode -Force
Install-VSCode.ps1
Install-Module -Name Az -Force
Install-Module -name MSOnline -Force
Install-Module -Name AzureAD -Force
Install-Module -Name MicrosoftTeams -Force
import-module ActiveDirectory -ErrorAction Ignore