################################################################################
#
# bluetoothtester
#
################################################################################

BLUETOOTHTESTER_VERSION = 1.0
BLUETOOTHTESTER_SITE = ./package/bluetoothtester/src
BLUETOOTHTESTER_SITE_METHOD = local

define BLUETOOTHTESTER_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define BLUETOOTHTESTER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bluetoothtester $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))