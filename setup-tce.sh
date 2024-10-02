export TAP_VERSION=TAP_VERSION_SELECTED
export TDS_VERSION=TDS_VERSION_SELECTED

#! Deploy Tanzu Cluster Essentials
# if data.values.platformRegistryLocation == 'customPlatformRegistrySelection':
INSTALL_TCE_FROM_MIRROR_COMMAND
#export INSTALL_REGISTRY_HOSTNAME= #@ data.values.customPlatformRegistryUrl
#export INSTALL_REGISTRY_USERNAME= #@ data.values.customPlatformRegistryUsername
#export INSTALL_REGISTRY_PASSWORD= #@ data.values.customPlatformRegistryPassword
#export INSTALL_BUNDLE=$INSTALL_REGISTRY_HOSTNAME/tce-packages/cluster-essentials-bundle@sha256:2f538b69c866023b7d408cce6f0624c5662ee0703d8492e623b7fce10b6f840b 
# else:
INSTALL_TCE_DIRECT_COMMAND
#export INSTALL_REGISTRY_HOSTNAME= 'tanzu.packages.broadcom.com'
#export INSTALL_REGISTRY_USERNAME= #@ data.values.tanzunetUsername
#export INSTALL_REGISTRY_PASSWORD= #@ data.values.tanzunetPassword
#export INSTALL_BUNDLE=$INSTALL_REGISTRY_HOSTNAME/tanzu-cluster-essentials/cluster-essentials-bundle@sha256:2f538b69c866023b7d408cce6f0624c5662ee0703d8492e623b7fce10b6f840b 
# end 
#./install_tce.sh