# Android build config for libusb examples to be run by test_app
# Copyright © 2012-2013 RealVNC Ltd. <toby.gray@realvnc.com>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
#

LOCAL_PATH:= $(call my-dir)
LIBUSB_ROOT_REL:= ../../..
LIBUSB_ROOT_ABS:= $(LOCAL_PATH)/../..

# listdevs

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(LIBUSB_ROOT_REL)/examples/listdevs.c

LOCAL_C_INCLUDES += \
  $(LIBUSB_ROOT_ABS)

LOCAL_SHARED_LIBRARIES += usb-1.0

LOCAL_MODULE:= listdevs

include $(BUILD_SHARED_LIBRARY)

# xusb

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(LIBUSB_ROOT_REL)/examples/xusb.c

LOCAL_C_INCLUDES += \
  $(LIBUSB_ROOT_ABS)

LOCAL_SHARED_LIBRARIES += usb-1.0
LOCAL_LDFLAGS += -Wl,--export-dynamic

LOCAL_MODULE:= xusb

include $(BUILD_SHARED_LIBRARY)
