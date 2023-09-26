export IMGPKG_REGISTRY_HOSTNAME="HARBOR_FQDN"
export IMGPKG_REGISTRY_USERNAME="HARBOR_USERNAME"
export IMGPKG_REGISTRY_PASSWORD="HARBOR_PASSWORD"
export TAP_VERSION=1.6.3
export TDS_VERSION=1.7.0

#! copy tanzu cluster essentials assets to mirror registry
PUSH_TCE_COMMAND

#! copy tap packages to mirror registry
PUSH_TAP_COMMAND

#! copy tbs dependencies packages to mirror registry
PUSH_TBS_DEPS_COMMAND

#! copy tanzu data services to mirror registry
PUSH_TDS_COMMAND