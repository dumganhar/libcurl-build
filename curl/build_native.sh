export HOSTCONF=arm-eabi-linux
export NDK=$HOME/android/android-ndk-r5-crystax-2
export TOOLCHAIN=$HOME/android/toolchain
export ARCH=armv7-a
export SYSROOT=$TOOLCHAIN/sysroot
export PATH=$PATH:$TOOLCHAIN/bin:$SYSROOT/usr/local/bin
export CROSS_COMPILE=arm-linux-androideabi
export CC=${CROSS_COMPILE}-gcc
export CXX=${CROSS_COMPILE}-g++
export AR=${CROSS_COMPILE}-ar
export AS=${CROSS_COMPILE}-as
export LD=${CROSS_COMPILE}-ld
export RANLIB=${CROSS_COMPILE}-ranlib
export NM=${CROSS_COMPILE}-nm
export CFLAGS="-DANDROID -mandroid -fomit-frame-pointer --sysroot $SYSROOT -march=$ARCH -mfloat-abi=softfp -mfpu=vfp -mthumb"
export CXXFLAGS="$CFLAGS"
export LDLIBS="${NDK}/sources/crystax/libs/armeabi-v7a -lcrystax_static"
