export IMGPKG_REGISTRY_HOSTNAME="HARBOR_FQDN"
export IMGPKG_REGISTRY_USERNAME="HARBOR_USERNAME"
export IMGPKG_REGISTRY_PASSWORD="HARBOR_PASSWORD"
export TAP_VERSION=TAP_VERSION_SELECTED
export TDS_VERSION=TDS_VERSION_SELECTED
export RMQ_VERSION=RMQ_VERSION_SELECTED

#! copy tanzu cluster essentials assets to mirror registry
PUSH_TCE_COMMAND

#! copy tap packages to mirror registry
PUSH_TAP_COMMAND

#! copy tbs dependencies packages to mirror registry
PUSH_TBS_DEPS_COMMAND

#! copy tanzu data services to mirror registry
PUSH_TDS_COMMAND

#! copy tanzu rabbitmq to mirror registry
PUSH_RMQ_COMMAND

#! copy tanzu korifi to mirror registry
PUSH_KORIFI_COMMAND