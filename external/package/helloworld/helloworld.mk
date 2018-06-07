################################################################################
#
# helloworld
#
################################################################################

HELLOWORLD_VERSION = 1.0
HELLOWORLD_SITE = ./package/helloworld/src
HELLOWORLD_SITE_METHOD = local

define HELLOWORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/helloworld $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))