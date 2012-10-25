#!/bin/sh
SDK_ROOT=/home/minggo/android-source
export PATH=/home/minggo/android-source/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin:$PATH
./configure --host=arm-linux CC=arm-eabi-gcc LD=arm-eabi-ld AR=arm-eabi-ar STRIP=arm-eabi-strip \
AS=arm-eabi-as \
CPPFLAGS="-I $SDK_ROOT/external/libpng/include     
-I $SDK_ROOT/external/zlib    
-I $SDK_ROOT/external/openssl/include
-I $SDK_ROOT/out/target/product/generic/obj/STATIC_LIBRARIES/libpng_intermediates   
-I $SDK_ROOT/out/target/product/generic/obj/STATIC_LIBRARIES/libwebcore_intermediates   
-I $SDK_ROOT/dalvik/libnativehelper/include/nativehelper   
-I $SDK_ROOT/system/core/include   
-I $SDK_ROOT/hardware/libhardware/include   
-I $SDK_ROOT/hardware/libhardware_legacy/include   
-I $SDK_ROOT/hardware/ril/include   
-I $SDK_ROOT/dalvik/libnativehelper/include   
-I $SDK_ROOT/frameworks/base/include   
-I $SDK_ROOT/frameworks/base/opengl/include   
-I $SDK_ROOT/frameworks/base/native/include   
-I $SDK_ROOT/external/skia/include   
-I $SDK_ROOT/out/target/product/generic/obj/include   
-I $SDK_ROOT/bionic/libc/arch-arm/include   
-I $SDK_ROOT/bionic/libc/include   
-I $SDK_ROOT/bionic/libstdc++/include   
-I $SDK_ROOT/bionic/libc/kernel/common   
-I $SDK_ROOT/bionic/libc/kernel/arch-arm   
-I $SDK_ROOT/bionic/libm/include   
-I $SDK_ROOT/bionic/libm/include/arch/arm   
-I $SDK_ROOT/bionic/libthread_db/include 
-I $SDK_ROOT/system/core/include/arch/linux-arm/ 
-include $SDK_ROOT/system/core/include/arch/linux-arm/AndroidConfig.h" \
CFLAGS="-nostdlib -fno-exceptions -Wno-multichar -msoft-float -fpic -ffunction-sections -funwind-tables -fstack-protector -Wa,--noexecstack -Werror=format-security -fno-short-enums -march=armv5te -mtune=xscale -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__   -Wno-psabi -mthumb-interwork -DANDROID -fmessage-length=0 -W -Wall -Wno-unused -Winit-self -Wpointer-arith -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wstrict-aliasing=2 -finline-functions -fno-inline-functions-called-once -fgcse-after-reload -frerun-cse-after-loop -frename-registers -mthumb -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64" \
LIBS="-L$SDK_ROOT/out/target/product/generic/obj/lib -lc -lstdc++ -lm 
-L$SDK_ROOT/out/target/product/generic/system/lib" 

