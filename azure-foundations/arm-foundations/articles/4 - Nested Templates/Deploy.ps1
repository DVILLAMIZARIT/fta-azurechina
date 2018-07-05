
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



    ###################################################

    cmdlet Test-AzureRmResourceGroupDeployment at command pipeline position 1
Supply values for the following parameters:
(Type !? for Help.)
VERBOSE: 4:21:06 PM - Template is valid.
cmdlet New-AzureRmResourceGroupDeployment at command pipeline position 1
Supply values for the following parameters:
(Type !? for Help.)
VERBOSE: Performing the operation "Creating Deployment" on target "mc-rg-fta-demo".
VERBOSE: 4:21:15 PM - Template is valid.
VERBOSE: 4:21:17 PM - Create template deployment 'azuredeploy'
VERBOSE: 4:21:17 PM - Checking deployment status in 5 seconds
VERBOSE: 4:21:22 PM - Checking deployment status in 5 seconds
VERBOSE: 4:21:28 PM - Resource Microsoft.Storage/storageAccounts 'xw32pxd4ojjvkadsa' provisioning status is running
VERBOSE: 4:21:28 PM - Checking deployment status in 22 seconds
VERBOSE: 4:21:51 PM - Resource Microsoft.Network/loadBalancers 'adLoadBalancer' provisioning status is succeeded
VERBOSE: 4:21:51 PM - Resource Microsoft.Network/publicIPAddresses 'adPublicIP' provisioning status is succeeded
VERBOSE: 4:21:51 PM - Resource Microsoft.Resources/deployments 'VNet' provisioning status is succeeded
VERBOSE: 4:21:51 PM - Resource Microsoft.Network/virtualNetworks 'adVNET' provisioning status is succeeded
VERBOSE: 4:21:51 PM - Resource Microsoft.Compute/availabilitySets 'adAvailabiltySet' provisioning status is succeeded
VERBOSE: 4:21:51 PM - Checking deployment status in 5 seconds
VERBOSE: 4:21:57 PM - Resource Microsoft.Network/networkInterfaces 'adNic' provisioning status is succeeded
VERBOSE: 4:21:57 PM - Resource Microsoft.Storage/storageAccounts 'xw32pxd4ojjvkadsa' provisioning status is succeeded
VERBOSE: 4:21:57 PM - Checking deployment status in 5 seconds
VERBOSE: 4:22:03 PM - Resource Microsoft.Compute/virtualMachines 'adVM' provisioning status is running
VERBOSE: 4:22:03 PM - Checking deployment status in 7 seconds
VERBOSE: 4:22:11 PM - Checking deployment status in 10 seconds
VERBOSE: 4:22:22 PM - Checking deployment status in 59 seconds
VERBOSE: 4:23:22 PM - Checking deployment status in 5 seconds
...
VERBOSE: 4:24:41 PM - Checking deployment status in 5 seconds
VERBOSE: 4:24:47 PM - Resource Microsoft.Compute/virtualMachines 'adVM' provisioning status is succeeded
VERBOSE: 4:24:47 PM - Checking deployment status in 5 seconds
VERBOSE: 4:24:53 PM - Resource Microsoft.Compute/virtualMachines/extensions 'adVM/CreateADForest' provisioning status is running
VERBOSE: 4:24:53 PM - Checking deployment status in 5 seconds
VERBOSE: 4:24:59 PM - Checking deployment status in 5 seconds
...
VERBOSE: 4:40:17 PM - Checking deployment status in 5 seconds
VERBOSE: 4:40:23 PM - Checking deployment status in 5 seconds
VERBOSE: 4:40:29 PM - Resource Microsoft.Compute/virtualMachines/extensions 'adVM/CreateADForest' provisioning status is succeeded
VERBOSE: 4:40:29 PM - Checking deployment status in 5 seconds
VERBOSE: 4:40:36 PM - Resource Microsoft.Resources/deployments 'UpdateVNetDNS' provisioning status is running
VERBOSE: 4:40:36 PM - Checking deployment status in 5 seconds
VERBOSE: 4:40:42 PM - Checking deployment status in 5 seconds
VERBOSE: 4:40:49 PM - Checking deployment status in 5 seconds
VERBOSE: 4:40:55 PM - Resource Microsoft.Resources/deployments 'UpdateVNetDNS' provisioning status is succeeded

DeploymentName          : azuredeploy
CorrelationId           : c0978847-adad-45ba-80c6-3cb912780b3c
ResourceGroupName       : mc-rg-fta-demo
ProvisioningState       : Succeeded
Timestamp               : 7/2/2018 8:40:53 AM
Mode                    : Incremental
TemplateLink            : Microsoft.Azure.Management.ResourceManager.Models.TemplateLink
TemplateLinkString      : 
                          Uri            : https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/active-directory-new-domain/azuredeploy.json
                          ContentVersion : 1.0.0.0
                          