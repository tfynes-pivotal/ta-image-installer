export IMGPKG_REGISTRY_HOSTNAME= HARBOR_FQDN
export IMGPKG_REGISTRY_USERNAME= HARBOR_USERNAME
export IMGPKG_REGISTRY_PASSWORD= HARBOR_PASSWORD
export TAP_VERSION=1.6.3
export TDS_VERSION=1.7.0

docker login registry.tanzu.vmware.com -u TANZUNET_USERNAME -p TANZUNET_PASSWORD

#! copy tanzu cluster essentials assets to mirror registry
DIRECT_COPY_TCE_COMMAND
#! imgpkg copy -b registry.tanzu.vmware.com/tanzu-cluster-essentials/cluster-essentials-bundle@sha256:2f538b69c866023b7d408cce6f0624c5662ee0703d8492e623b7fce10b6f840b --to-repo $IMGPKG_REGISTRY_HOSTNAME/tce-packages/cluster-essentials-bundle --include-non-distributable-layers

#! copy tap packages to mirror registry
DIRECT_COPY_TAP_COMMAND
#! imgpkg copy -b registry.tanzu.vmware.com/tanzu-application-platform/tap-packages:$TAP_VERSION --to-repo $IMGPKG_REGISTRY_HOSTNAME/tap-packages --include-non-distributable-layers       

#! copy tbs dependencies packages to mirror registry
DIRECT_COPY_TBS_DEPS_COMMAND
#! imgpkg copy -b registry.tanzu.vmware.com/tanzu-application-platform/full-deps-package-repo:$TAP_VERSION   --to-repo=$IMGPKG_REGISTRY_HOSTNAME/tap-packages/tbs-full-deps


#! copy tanzu data services to mirror registry
DIRECT_COPY_TDS_COMMAND
#! imgpkg copy -b registry.tanzu.vmware.com/packages-for-vmware-tanzu-data-services/tds-packages:$TDS_VERSION  --to-repo $IMGPKG_REGISTRY_HOSTNAME/tds-packages/tds-packages --include-non-distributable-layers


#!imgpkg copy -b registry.tanzu.vmware.com/p-rabbitmq-for-kubernetes/tanzu-rabbitmq-package-repo:1.4.1      --to-tar=/Users/thomasfynes/PIVOTAL/TAP/tap15offline/rmq.tar

#! Deploy Tanzu Cluster Essentials
#! export INSTALL_BUNDLE=$IMGPKG_REGISTRY_HOSTNAME/tce-packages/cluster-essentials-bundle@sha256:2f538b69c866023b7d408cce6f0624c5662ee0703d8492e623b7fce10b6f840b \
#! export INSTALL_REGISTRY_HOSTNAME=$IMGPKG_REGISTRY_HOSTNAME 
#! export INSTALL_REGISTRY_USERNAME=$IMGPKG_REGISTRY_USERNAME 
#! export INSTALL_REGISTRY_PASSWORD=$IMGPKG_REGISTRY_PASSWORD
#! ./install_tce.sh