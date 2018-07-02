# FastTrack for Azure - Azure Resource Manager (ARM) Template Fundamentals - Module 4 - Nested Templates

During this module, we will leverage the Azure Quickstart Templates gallery. We will use the template to [
Create a new Windows VM and create a new AD Forest, Domain and DC](https://github.com/Azure/azure-quickstart-templates/tree/master/active-directory-new-domain).

Add-AzureRmAccount -Environment AzureChinaCloud

$resourceGroupName = "mc-rg-fta-demo"
$resourceGroupLocation = "China North 2"

Get-AzureRmResourceGroup -Name $resourceGroupName | Remove-AzureRmResourceGroup -Force
New-AzureRmResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation

Test-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -Verbose `
    -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/active-directory-new-domain/azuredeploy.json `
    -TemplateParameterObject @{adminusername = 'allenk'; domainName = "fta.lab"; dnsPrefix = "ftademoallenk"}

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -Verbose `
    -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/active-directory-new-domain/azuredeploy.json `
    -TemplateParameterObject @{adminusername = 'allenk'; domainName = "fta.lab"; dnsPrefix = "ftademoallenk"}