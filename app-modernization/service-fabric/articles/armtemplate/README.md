# Very simple deployment of a 5 Node secure Service Fabric Cluster with Azure Diagnostics enabled

### Cloned from [azure-quickstart-templates](https://github.com/Azure/azure-quickstart-templates/tree/master/service-fabric-secure-cluster-5-node-1-nodetype). Customized for Azure China

This template allows you to deploy a secure 5 node, Single Node Type Service Fabric Cluster running Windows Server 2016 Datacenter on aStandard_D2 Size VMSS with Azure Diagnostics turned on. This template assumes that you already have certificates uploaded to your keyvault.  If you want to create a new certificate run the New-ServiceFabricClusterCertificate.ps1 file in this sample.  That script will output the values necessary for deployment via the parameters file.


## Creating a custom ARM template

If you are wanting to create a custom ARM template for your cluster, then you have two choices.

1. You can acquire this sample template make changes to it. 
2. Log into the azure portal and use the service fabric portal pages to generate the template for you to customize.
  1. Log on to the Azure Portal [http://aka.ms/servicefabricportal](http://aka.ms/servicefabricportal).

  2. Go through the process of creating the cluster as described in [Creating Service Fabric Cluster via portal](https://docs.microsoft.com/azure/service-fabric/service-fabric-cluster-creation-via-portal) , but do not click on ***create**, instead go to Summary and download the template and parameters.


 ![DownloadTemplate][DownloadTemplate]


Unzip the downloaded .zip on your local machine, make any changes to template or the parameter file as you need.


<!--Image references-->
[DownloadTemplate]: ./DownloadTemplate.png



