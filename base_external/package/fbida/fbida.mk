
##############################################################
#
# FBIDA
#
##############################################################

FBIDA_VERSION = '1bb8a8aa29845378903f3c690e17c0867c820da2'
FBIDA_SITE = 'git@github.com:kraxel/fbida.git'
FBIDA_SITE_METHOD = git


define FBIDA_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) make install
endef

define FBIDA_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/fbi $(TARGET_DIR)/bin	
endef


$(eval $(generic-package))
