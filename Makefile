SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk/
ARCHS = arm64 arm64e
TARGET = iphone:14.5
THEOS_PACKAGE_SCHEME=roothide
INSTALL_TARGET_PROCESSES = SpringBoard



include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OLEDISCORD

OLEDISCORD_FILES = Tweak.x
OLEDISCORD_CFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk


SUBPROJECTS += prefs
include $(THEOS_MAKE_PATH)/aggregate.mk
