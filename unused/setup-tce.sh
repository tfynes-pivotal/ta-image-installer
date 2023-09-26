#!imgpkg copy -b registry.tanzu.vmware.com/p-rabbitmq-for-kubernetes/tanzu-rabbitmq-package-repo:1.4.1      --to-tar=/Users/thomasfynes/PIVOTAL/TAP/tap15offline/rmq.tar
#! Deploy Tanzu Cluster Essentials
#! export INSTALL_BUNDLE=$IMGPKG_REGISTRY_HOSTNAME/tce-packages/cluster-essentials-bundle@sha256:2f538b69c866023b7d408cce6f0624c5662ee0703d8492e623b7fce10b6f840b \
#! export INSTALL_REGISTRY_HOSTNAME=$IMGPKG_REGISTRY_HOSTNAME 
#! export INSTALL_REGISTRY_USERNAME=$IMGPKG_REGISTRY_USERNAME 
#! export INSTALL_REGISTRY_PASSWORD=$IMGPKG_REGISTRY_PASSWORD
#! ./install_tce.sh