﻿Login-AzureRmAccount -Environment AzureChinaCloud

$resourceGroupName = "fta-fun-dependency-rg"
New-AzureRmResourceGroup -Name $resourceGroupName -Location "China North"

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -Mode Incremental -TemplateFile "01-dependencies.json" -TemplateParameterFile "01-dependencies.parameters.json"