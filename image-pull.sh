export TAP_VERSION=TAP_VERSION_SELECTED
export TDS_VERSION=TDS_VERSION_SELECTED
export RMQ_VERSION=RMQ_VERSION_SELECTED
export KORIFI_VERSION=KORIFI_VERSION_SELECTED
export IMGPKG_REGISTRY_USERNAME="TANZUNET_USERNAME"
export IMGPKG_REGISTRY_PASSWORD="TANZUNET_PASSWORD"

#docker login tanzu.packages.broadcom.com -u "TANZUNET_USERNAME" -p "TANZUNET_PASSWORD"

#! copy tanzu cluster essentials assets to mirror registry
PULL_TCE_COMMAND

export IMGPKG_REGISTRY_HOSTNAME="tanzu.packages.broadcom.com"
#! copy tap packages to mirror registry
PULL_TAP_COMMAND

#! copy tbs dependencies packages to mirror registry
PULL_TBS_DEPS_COMMAND

#! copy tanzu data services to mirror registry
PULL_TDS_COMMAND

#! copy tanzu rabbitmq to mirror registry
PULL_RMQ_COMMAND

#! copy tanzu korifi to mirror registry
PULL_KORIFI_COMMAND