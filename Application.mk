#APP_STL := stlport_shared
#APP_STL := stlport_static
#NDK_PROJECT_PATH=. 
#APP_BUILD_SCRIPT=./Android.mk 
APP_BUILD_SCRIPT:=$(call my-dir)/Android.mk
APP_STL := gnustl_static
#APP_ABI := armeabi-v7a arm64-v8a x86
#APP_ABI := armeabi-v7a 
APP_ABI := armeabi
APP_PLATFORM := android-19 
#APP_CPPFLAGS += -fexceptions
APP_CPPFLAGS += -frtti
#APP_CFLAGS:=-DDISABLE_NEON



