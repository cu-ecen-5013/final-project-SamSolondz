
##############################################################
#
# FBWRITE
#
##############################################################

FBWRITE_VERSION = '3573e9d511641c8d9e480a2fd813fc5f230dbd45'
FBWRITE_SITE = 'git@github.com:chwe3468/cu-ecen-5013-final-project-shared.git'
FBWRITE_SITE_METHOD = git
FBWRITE_LDFLAGS = $(LDFLAGS_FOR_BUILD) -pthread -lrt

define FBWRITE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) LDFLAGS="$(FBWRITE_LDFLAGS)" fbwrite
endef

define FBWRITE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/fbwrite $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
