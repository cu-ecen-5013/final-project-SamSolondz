
##############################################################
#
# SERVERSOCKET
#
##############################################################

SERVERSOCKET_VERSION = 'dd08247bba323442f55da14524e7fd918d8d5203'
SERVERSOCKET_SITE = 'git@github.com:chwe3468/cu-ecen-5013-final-project-shared.git'
SERVERSOCKET_SITE_METHOD = git
SERVERSOCKET_LDFLAGS = $(LDFLAGS_FOR_BUILD) -pthread -lrt

define SERVERSOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) LDFLAGS="$(SERVERSOCKET_LDFLAGS)" all
endef

define SERVERSOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/serversocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/serversocket-start-stop.sh $(TARGET_DIR)/etc/init.d/S98serversocket
endef


$(eval $(generic-package))
