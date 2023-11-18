SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk/
ARCHS = arm64 arm64e
TARGET = iphone:latest:15.0
FINALPACKAGE=1
DEBUG=0
THEOS_PACKAGE_SCHEME=roothide


include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = OLEDisocrd


OLEDisocrd_FILES = XXXRootListController.m
OLEDisocrd_FRAMEWORKS = UIKit
OLEDisocrd_PRIVATE_FRAMEWORKS = Preferences
OLEDisocrd_INSTALL_PATH = /Library/PreferenceBundles
OLEDisocrd_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
