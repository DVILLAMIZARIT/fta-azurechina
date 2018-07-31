# POC Scenario Voting Application: Working with Service Fabric Services  
# Abstract  
The goal of this poc is to make you familiar with an end to end development flow for Service Fabric applications. You will practice creating a new Service Fabric application on your development machine, working with stateless services, deploying, updating and monitoring an application deployment. Throughout the exercise, you will get accustomed with Visual Studio’s Service Fabric tooling, Service Fabric Explorer and learn how to effectively use both.

**The voting application consists of two services**:
* Web front-end service (VotingWeb)- An ASP.NET Core web front-end service, which serves the web page and exposes web APIs to communicate with the backend service.
* Back-end service (VotingData)- An ASP.NET Core web service, which exposes an API to store the vote results in a reliable dictionary persisted on disk.
 
**When you vote in the application the following events occur**:
1. A JavaScript sends the vote request to the web API in the web front-end service as an HTTP PUT request.
2. The web front-end service uses a proxy to locate and forward an HTTP PUT request to the back-end service.
3. The back-end service takes the incoming request, and stores the updated result in a reliable dictionary, which gets replicated to multiple nodes within the cluster and persisted on disk. All the application's data is stored in the cluster, so no database is needed.

# Learning objectives
After completing the exercises in this module, you will be able to:
* Set up and manage Service Fabric clusters on your development machine
* Set up Service Fabric Clusters in Azure
* Understand the concepts of Service Fabric applications, services, stateless services, application lifecycle management, upgrades, diagnostics and health
* Use Visual Studio and Service Fabric Explorer to efficiently develop Service Fabric applications

## Pre-Requisites
* To complete this PoC, you will need:
    * Visual Studio 2017
    * You need to have an Azure subscription
    * Download Azure SDK Tools 2.9 or above from the Web platform installer and install the SDK
    * Download the Service Fabric developer SDK: http://aka.ms/ServiceFabricSDK
     * You will need Service Fabric Local Cluster Manager to manage your local dev cluster
       * Open following folder:
         C:\Program Files\Microsoft SDKs\Service Fabric\Tools\ServiceFabricLocalClusterManage And run ServiceFabricLocalClusterManager.exe
    * Download the starter application from [GitHub](https://github.com/Azure-Samples/service-fabric-dotnet-quickstart)

## Create a Service Fabric Cluster

 * Follow these steps ([Global](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-creation-via-portal), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-cluster-creation-via-portal)) to create a Secure Service Fabric Cluster using Azure portal
 * Create a Secure Service Fabric Cluster on ([Global](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-tutorial-create-cluster-azure-ps), [China](https://docs.azure.cn/service-fabric/service-fabric-tutorial-create-cluster-azure-ps)) Azure using PowerShell
 * Use ARM Template ([Global](https://github.com/Azure/azure-quickstart-templates/tree/master/service-fabric-secure-cluster-5-node-1-nodetype), [China](./armtemplate/README.md)) to deploy Service Fabric Clusters. 

  * [GitHub Quickstart Templates](https://github.com/Azure/azure-quickstart-templates)
  * [Azure Quickstart Templates](https://azure.microsoft.com/en-us/resources/templates/)

## Walk through the voting sample application
 * [Create a .NET Service Fabric application in Azure](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-quickstart-dotnet)
 * [Steb-by-Step](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-tutorial-create-dotnet-app), build the .NET Voting application
 * [Download complete code](https://azure.microsoft.com/en-us/resources/samples/service-fabric-dotnet-quickstart/) for the Voting application

## Additional Resources
* Service Farbic Getting Started ([Global](http://aka.ms/ServiceFabric), [China](https://www.azure.cn/en-us/home/features/service-fabric/))
* Download the samples from [GitHub](https://github.com/Microsoft/service-fabric)
* Service Fabric [Learning Path](https://azure.microsoft.com/en-us/documentation/learning-paths/service-fabric/)
* [Ignite Session](https://myignite.microsoft.com/videos/3168)
* Theory: [Microservices defined by Martin Fowler and James Lewis](http://martinfowler.com/microservices/)
* Service Fabric Service Communications ([Global](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-connect-and-communicate-with-services), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-connect-and-communicate-with-services))
* Create a Windows Cluster on ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-cluster-creation-for-windows-server/), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-cluster-creation-for-windows-server)) Azure
* [On-Premise] ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-cluster-creation-for-windows-server/#plan-and-prepare-your-cluster-deployment), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-cluster-creation-for-windows-server#plan-and-prepare-your-cluster-deployment))
* Update Fabric Version ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-cluster-upgrade/#controlling-the-fabric-version-that-runs-on-your-cluster), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-cluster-upgrade#controlling-the-fabric-version-that-runs-on-your-cluster))
 * Upgrade Windows Servers ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-cluster-upgrade-windows-server/), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-cluster-upgrade-windows-server))
 * Service Fabric on Linux [[Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-linux-overview/), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-deploy-anywhere))
 * Connect to a Secure Cluster ([Global](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-connect-to-secure-cluster), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-connect-to-secure-cluster))
 * (invalid) [Upgrade and clean up Service Fabric Development environment](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-update-your-development-environment/)
 * Troubleshoot a ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-troubleshoot-local-cluster-setup/), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-troubleshoot-local-cluster-setup)) environment
 * Elastic Search ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-diagnostic-how-to-use-elasticsearch/), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-diagnostics-event-aggregation-eventflow))
 * Partitioning Concepts ([Global](https://azure.microsoft.com/en-us/documentation/articles/service-fabric-concepts-partitioning/), [China](https://docs.azure.cn/zh-cn/service-fabric/service-fabric-concepts-partitioning))
