Set-Location "C:\kangxh\Github\fta-azurechina\app-modernization\service-fabric\articles\armtemplate\"

import-module C:\kangxh\PowerShell\allenk-Module-Azure.psm1
Add-AzureRMAccount-Allenk -myAzureEnv mooncake

$rgName = "mc-rg-fta-sf"
$rgLocation = "China North"
$sfParams = @{
    clusterName = "mcsfclusterfta";
    adminUsername = "ftachina";
    adminPassword = "Password01!";
    certificateThumbprint = "4F883F8F26299DDE014E9B86E7559FF8C6184D87";
    sourceVaultResourceId = "/subscriptions/e363f44b-9312-44d7-bfc8-6bcef51ee7b8/resourceGroups/mc-rg-fta-core/providers/Microsoft.KeyVault/vaults/mc-kv-fta";
    certificateUrlValue = "https://mc-kv-fta.vault.azure.cn/secrets/MooncakeClientServerAuth/9a1d364c17f549cb96a05fc48f11d732"
}

New-AzureRmResourceGroup -Name $rgName -Location $rgLocation
New-AzureRmResourceGroupDeployment -Name FTAServiceFabric -ResourceGroupName $rgName -TemplateFile ".\sf-5node-secure-win.json" -TemplateParameterObject $sfParams -Verbose


