
##############################################################
#
# FBWRITE
#
##############################################################

FBWRITE_VERSION = '9499b6f7ed4d0e966ba82f14815278fac9526d97'
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
