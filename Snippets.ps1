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

# Deploy with a Resource Group Template in PowerShell
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"
$templateUri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-storage-account-create/azuredeploy.json"
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateUri $templateUri -Location $location
