# Copyright (C) 2016 The WorktileCore source project
#

LOCAL_PATH := $(call my-dir)/../../../src
include $(CLEAR_VARS)

# socket.io files

SIO_SRC_CPP := $(wildcard $(LOCAL_PATH)/*.cpp)
SIO_INTERNAL_SRC_CPP := $(wildcard $(LOCAL_PATH)/internal/*.cpp)

# Complie Sources

LOCAL_SRC_FILES := $(SIO_SRC_CPP:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(SIO_INTERNAL_SRC_CPP:$(LOCAL_PATH)/%=%)

LOCAL_MODULE := sioclient

LOCAL_CPPFLAGS  := -std=gnu++11
LOCAL_CPPFLAGS  += -fexceptions

LOCAL_CFLAGS :=-D__GXX_EXPERIMENTAL_CXX0X__ -D__STDC_CONSTANT_MACROS

# random regex graph chrono thread signals filesystem system date_time

LOCAL_LDLIBS := -L$(LOCAL_PATH)/../lib/boost/lib/ -lboost_system -lboost_random -lboost_regex -lboost_graph -lboost_chrono -lboost_thread -lboost_signals -lboost_filesystem -lboost_date_time

# Third Party Libraries (rapidjson & websocketpp)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../lib/websocketpp \
										$(LOCAL_PATH)/../lib/rapidjson/include \
										$(LOCAL_PATH)/../lib/boost/include/boost-1_53


include $(BUILD_STATIC_LIBRARY)
