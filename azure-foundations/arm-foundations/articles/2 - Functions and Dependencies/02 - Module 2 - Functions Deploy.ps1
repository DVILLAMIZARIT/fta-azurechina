Login-AzureRmAccount -Environment AzureChinaCloud

$resourceGroupName = "fta-fun-vnet-rg"
New-AzureRmResourceGroup -Name $resourceGroupName -Location "China North"

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -Mode Incremental -TemplateFile "02-functions.json" -TemplateParameterFile "02-functions.parameters.json"