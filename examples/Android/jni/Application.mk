# Copyright (C) 2016 The WorktileCore source project
#

APP_STL := gnustl_static
APP_PLATFORM := android-14
APP_CPPFLAGS := -std=c++11
APP_CPPFLAGS += -frtti #-Wno-format-security #-Wno-literal-suffix
APP_OPTIM := debug
NDK_TOOLCHAIN_VERSION=4.8
APP_ABI := armeabi x86
