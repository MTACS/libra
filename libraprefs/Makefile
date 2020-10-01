TARGET = iphone:clang:13.0:13.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = LibraPrefs

LibraPrefs_FILES = LibraRootListController.m
LibraPrefs_FRAMEWORKS = UIKit
LibraPrefs_PRIVATE_FRAMEWORKS = Preferences
LibraPrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
LibraPrefs_INSTALL_PATH = /Library/PreferenceBundles
LibraPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
