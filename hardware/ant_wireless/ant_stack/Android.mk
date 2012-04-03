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
# ANT native library
#

ifeq ($(BOARD_ANT_WIRELESS_DEVICE),"wl12xx")

include $(LOCAL_PATH)/hal/bluez_hci/Android.mk

else ifeq ($(BOARD_ANT_WIRELESS_DEVICE),"chip-B")

include $(LOCAL_PATH)/hal/chip-B/Android.mk

else

$(error Unsupported BOARD_ANT_WIRELESS_DEVICE := $(BOARD_ANT_WIRELESS_DEVICE))

endif # BOARD_ANT_WIRELESS_DEVICE type

endif # BOARD_ANT_WIRELESS_DEVICE defined

