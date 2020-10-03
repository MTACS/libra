THEOS_DEVICE_IP = 10.0.0.151
ARCHS = arm64 arm64e
TARGET = iphone:clang:13.0:13.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Libra

Libra_FILES = Tweak.xm LibraCell.xm
Libra_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
Libra_LIBRARIES = applist 
Libra_EXTRA_FRAMEWORKS += Cephei
Libra_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
SUBPROJECTS += libraprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
