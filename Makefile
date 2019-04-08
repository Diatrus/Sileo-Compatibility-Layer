export ARCHS = arm64
export TARGET = iphone:clang:11.2:11.2
THEOS_DEVICE_IP = 192.168.1.101
FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Sillyo
Sillyo_FILES = Tweak.xm
Sillyo_FRAMEWORKS = WebKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Sileo"
