LOCAL_PATH := $(call my-dir)

#####################################
## libmagic
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/apprentice.c \
	src/apptype.c \
	src/ascmagic.c \
	src/asctime_r.c \
	src/asprintf.c \
	src/cdf.c \
	src/cdf_time.c \
	src/compress.c \
	src/ctime_r.c \
	src/encoding.c \
	src/fsmagic.c \
	src/funcs.c \
	src/getline.c \
	src/getopt_long.c \
	src/is_tar.c \
	src/magic.c \
	src/pread.c \
	src/print.c \
	src/readcdf.c \
	src/readelf.c \
	src/softmagic.c \
	src/strlcat.c \
	src/strlcpy.c \
	src/vasprintf.c \

LOCAL_C_INCLUDES := \
	$(LCOAL_PATH) \
	$(LCOAL_PATH)/src \

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_MODULE := magic
include $(BUILD_STATIC_LIBRARY)

#########################################
## file
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/file.c \

LOCAL_C_INCLUDES := \
	$(LCOAL_PATH) \
	$(LCOAL_PATH)/src \

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_STATIC_LIBRARIES := libmagic

LOCAL_MODULE := file
include $(BUILD_EXECUTABLE)
