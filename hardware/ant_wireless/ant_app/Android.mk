#
# Copyright (C) 2009 Dynastream Innovations
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifneq ($(BOARD_ANT_WIRELESS_DEVICE),)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#
# ANT Application
#

LOCAL_C_INCLUDES:= \
	hardware/ant_wireless/ant_stack/hal/common/inc

LOCAL_CFLAGS:= -g -c -W -Wall -O2

LOCAL_SRC_FILES:= \
	ant_app.c

LOCAL_SHARED_LIBRARIES := \
	libantradio \
	libcutils

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE:=antradio_app

include $(BUILD_EXECUTABLE)

endif # BOARD_ANT_WIRELESS_DEVICE defined
