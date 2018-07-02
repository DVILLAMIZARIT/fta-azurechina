
Add-AzureRmAccount -Environment AzureChinaCloud

$resourceGroupName = "mc-rg-fta-demo"
$resourceGroupLocation = "China North 2"

$adminusername = "ftaadmin"
$domainName = "ftachina.lab"
$dnsPrefix = "ftademo"

Get-AzureRmResourceGroup -Name $resourceGroupName | Remove-AzureRmResourceGroup -Force
New-AzureRmResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation

Test-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -Verbose `
    -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/active-directory-new-domain/azuredeploy.json `
    -TemplateParameterObject @{adminusername = $adminusername; domainName = $domainName; dnsPrefix = $dnsPrefix}

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -Verbose `
    -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/active-directory-new-domain/azuredeploy.json `
    -TemplateParameterObject @{adminusername = $adminusername; domainName = $domainName; dnsPrefix = $dnsPrefix}