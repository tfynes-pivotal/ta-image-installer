
export IMGPKG_REGISTRY_HOSTNAME_0="registry.tanzu.vmware.com" 
export IMGPKG_REGISTRY_USERNAME_0="TANZUNET_USERNAME"
export IMGPKG_REGISTRY_PASSWORD_0="TANZUNET_PASSWORD"
export IMGPKG_REGISTRY_HOSTNAME_1="HARBOR_FQDN"
export IMGPKG_REGISTRY_USERNAME_1="HARBOR_USERNAME"
export IMGPKG_REGISTRY_PASSWORD_1="HARBOR_PASSWORD"
export TAP_VERSION=TAP_VERSION_SELECTED
export TDS_VERSION=TDS_VERSION_SELECTED

#docker login registry.tanzu.vmware.com -u "TANZUNET_USERNAME" -p "TANZUNET_PASSWORD"

#! copy tanzu cluster essentials assets to mirror registry
DIRECT_COPY_TCE_COMMAND

#! copy tap packages to mirror registry
DIRECT_COPY_TAP_COMMAND

#! copy tbs dependencies packages to mirror registry
DIRECT_COPY_TBS_DEPS_COMMAND

#! copy tanzu data services to mirror registry
DIRECT_COPY_TDS_COMMAND

