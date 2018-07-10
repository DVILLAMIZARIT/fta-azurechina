
# Azure Site Recovery - Reference Resources  

* [BCDR on Azure](https://azure.microsoft.com/en-us/solutions/disaster-recovery/)
* [Recover On Premise DataCenter](https://docs.microsoft.com/en-us/azure/architecture/resiliency/recovery-on-premises-azure)

## Azure Site Recovery Overview
* [RTO & RPO on Azure](https://blogs.msdn.microsoft.com/cloud_solution_architect/2018/05/02/understanding-rpo-and-rto-considerations-of-azure-solutions/)
* [Azure Site Recovery](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-overview)
* Support Matrix
  * Hyper-V to Azure ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-azure-support-matrix), [China](https://docs.azure.cn/site-recovery/hyper-v-azure-support-matrix))
  * VMWare/Phsycal/Hosted Cloud to Azure ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-physical-azure-support-matrix), [China](https://docs.azure.cn/site-recovery/vmware-physical-azure-support-matrix))
  * Azure to Azure ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/azure-to-azure-support-matrix), [China](https://docs.azure.cn/site-recovery/azure-to-azure-support-matrix))
  * ASR for Application ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-workload), [China](https://docs.azure.cn/site-recovery/site-recovery-workload))
  * FAQ ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-faq), [China](https://docs.azure.cn/site-recovery/site-recovery-faq))

## Capacity Plan 
* Hyper-V Envionment to Azure
  * [Deployment Planner](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-deployment-planner-overview)
  * [Generate Report](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-deployment-planner-run)
  * [Analysize Report](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-deployment-planner-analyze-report)
* VMWare environment to Azure
  * [Deployment Planner](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-vmware-deployment-planner-run)
  * [Generate Report](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-vmware-deployment-planner-run)
  * [Analysize Report](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-vmware-deployment-planner-analyze-report)
  * [Scale Out Process Server](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-set-up-process-server-scale)

* RBAC for ASR ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-role-based-linked-access-control), [China](https://docs.azure.cn/site-recovery/site-recovery-role-based-linked-access-control))

## Recovery Vault
* Overview] ([Global](https://docs.microsoft.com/en-us/azure/backup/backup-azure-recovery-services-vault-overview), [China](https://docs.azure.cn/backup/backup-azure-recovery-services-vault-overview))
* Backup Vault to Recovery Service Vault ([Global](https://docs.microsoft.com/en-us/azure/backup/backup-azure-upgrade-backup-to-recovery-services), [China](https://docs.azure.cn/backup/backup-azure-upgrade-backup-to-recovery-services)



## Replication Architecture

  * Hyper-V to Azure ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-azure-architecture), [China](https://docs.azure.cn/site-recovery/hyper-v-azure-architecture))
  * VMWare to Azure
    * On Premise ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-architecture), [China](https://docs.azure.cn/site-recovery/vmware-azure-architecture))
    * Cloud Service Provider ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-multi-tenant-overview), [China](https://docs.azure.cn/zh-cn/site-recovery/vmware-azure-multi-tenant-overview))
  * Azure to Azure ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/azure-to-azure-architecture), [China](https://docs.azure.cn/site-recovery/azure-to-azure-architecture))
  * Physical, AWS & other Hosted Cloud to Azure([Global](https://docs.microsoft.com/en-us/azure/site-recovery/physical-azure-architecture), [China](https://docs.azure.cn/site-recovery/physical-azure-architecture))

## Prepare Infrastructure for VMWare and Physcial Server
  * Setup Source VMWare environment ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-set-up-source), [China](https://docs.azure.cn/site-recovery/vmware-azure-set-up-source))
  * Setup Source Physical environmnet ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/physical-azure-set-up-source),[China](https://docs.azure.cn/site-recovery/physical-azure-set-up-source))
* Mobility Service ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-install-mobility-service), [China](https://docs.azure.cn/site-recovery/vmware-azure-install-mobility-service))

## Manage Replication Data
  * Enable Replication
    * Hyper-V ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-azure-powershell-resource-manager), [China](https://docs.azure.cn/site-recovery/hyper-v-azure-powershell-resource-manager))
    * Hyper-V with SCVMM ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-vmm-powershell-resource-manager), [China](https://docs.azure.cn/site-recovery/hyper-v-vmm-powershell-resource-manager))
    * VMWare ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-enable-replication), [China](https://docs.azure.cn/site-recovery/vmware-azure-enable-replication)
    * Azure to Azure ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/azure-to-azure-how-to-enable-replication), [China](https://docs.azure.cn/site-recovery/azure-to-azure-how-to-enable-replication))

  * Target Resource
    * Storage
      * Hyper-V ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-exclude-disk), [China](https://docs.azure.cn/site-recovery/hyper-v-exclude-disk)
      VMWare ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-exclude-disk), [China](https://docs.azure.cn/site-recovery/vmware-azure-exclude-disk)
    * Compute
    * Network
      * Network Mapping ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/hyper-v-vmm-network-mapping), [China](https://docs.azure.cn/site-recovery/hyper-v-vmm-network-mapping))
      * VM Interface ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-manage-network-interfaces-on-premises-to-azure), [China](https://docs.azure.cn/site-recovery/site-recovery-manage-network-interfaces-on-premises-to-azure)
      * Hybrid after failover ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/concepts-on-premises-to-azure-networking), [China](https://docs.microsoft.com/en-us/azure/site-recovery/concepts-on-premises-to-azure-networking))


## Failover
  * [Recovery Plan](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-create-recovery-plans)
  * [Test Failover](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-test-failover-to-azure)
  * [Planed Failover](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-failover)
  * Unplanned Failover
  * Failback
    * Hyper-V ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/site-recovery-failover), [China](https://docs.azure.cn/site-recovery/site-recovery-failover))
    * VMWare ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/concepts-types-of-failback), [China](https://docs.azure.cn/site-recovery/concepts-types-of-failback))
      * Reprotect ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/concepts-types-of-failback), [China](https://docs.azure.cn/site-recovery/concepts-types-of-failback))
      * Failback ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/vmware-azure-failback), [China](https://docs.azure.cn/site-recovery/vmware-azure-failback))

## Other
* Use Traffic Manager to reduce RTO ([Global](https://docs.microsoft.com/en-us/azure/site-recovery/concepts-traffic-manager-with-site-recovery), [China](https://docs.azure.cn/site-recovery/concepts-traffic-manager-with-site-recovery))