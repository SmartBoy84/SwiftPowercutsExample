TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_DEVICE_IP = le-carote

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SwiftPowercutExample

$(TWEAK_NAME)_FILES = $(shell find Sources/SwiftPowercutExample -name '*.swift') $(shell find Sources/SwiftPowercutExampleC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
$(TWEAK_NAME)_SWIFTFLAGS = -ISources/SwiftPowercutExampleC/include
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -ISources/SwiftPowercutExampleC/include
$(TWEAK_NAME)_LIBRARIES = powercuts

include $(THEOS_MAKE_PATH)/tweak.mk
