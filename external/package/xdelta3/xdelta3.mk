################################################################################
#
# xdelta3
#
################################################################################

XDELTA3_VERSION = 3.0.11
XDELTA3_SOURCE = xdelta3_${XDELTA3_VERSION}-dfsg.orig.tar.xz
XDELTA3_SITE = https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/xdelta3/3.0.11-dfsg-1ubuntu1

$(eval $(autotools-package))