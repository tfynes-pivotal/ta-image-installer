export TAP_VERSION=1.6.3
export TDS_VERSION=1.7.0

docker login registry.tanzu.vmware.com -u "TANZUNET_USERNAME" -p "TANZUNET_PASSWORD"

#! copy tanzu cluster essentials assets to mirror registry
PULL_TCE_COMMAND

#! copy tap packages to mirror registry
PULL_TAP_COMMAND

#! copy tbs dependencies packages to mirror registry
PULL_TBS_DEPS_COMMAND

#! copy tanzu data services to mirror registry
PULL_TDS_COMMAND
