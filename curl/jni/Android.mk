LOCAL_PATH:= $(call my-dir)

common_CFLAGS := -Wpointer-arith -Wwrite-strings -Wunused -Winline -Wnested-externs -Wmissing-declarations -Wmissing-prototypes -Wno-long-long -Wfloat-equal -Wno-multichar -Wsign-compare -Wno-format-nonliteral -Wendif-labels -Wstrict-prototypes -Wdeclaration-after-statement -Wno-system-headers -DHAVE_CONFIG_H

#########################
# Build the libcurl library

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../lib/Makefile.inc
CURL_HEADERS := \
	../curlbuild.h \
	../curl.h \
	../curlrules.h \
	../curlver.h \
	../easy.h \
	../mprintf.h \
	../multi.h \
	../stdcheaders.h \
	../typecheck-gcc.h

LOCAL_SRC_FILES := $(addprefix ../lib/,$(CSOURCES))
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../lib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../openssl-android/include \
../include
LOCAL_CFLAGS += $(common_CFLAGS)

LOCAL_MODULE:= libcurl

LOCAL_SHARED_LIBRARIES := -lz

include $(BUILD_STATIC_LIBRARY)

# test
include $(CLEAR_VARS)

LOCAL_SRC_FILES := test.cpp

LOCAL_MODULE:= libtest

LD_LIBRARIES := -lz 
LOCAL_STATIC_LIBRARIES := libcurl

include $(BUILD_SHARED_LIBRARY)


