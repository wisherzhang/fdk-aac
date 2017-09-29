NDK_HOME=/home/wisher/android-ndk-r10d
ANDROID_API=android-21
  
SYSROOT=$NDK_HOME/platforms/$ANDROID_API/arch-x86  
  
ANDROID_BIN=$NDK_HOME/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/  
  
CROSS_COMPILE=${ANDROID_BIN}/i686-linux-android-
   
ARM_INC=$SYSROOT/usr/include  
  
ARM_LIB=$SYSROOT/usr/lib  
  
LDFLAGS=" -nostdlib -Bdynamic -Wl,--whole-archive -Wl,--no-undefined -Wl,-z,noexecstack  -Wl,-z,nocopyreloc -Wl,-soname,/system/lib/libz.so -Wl,-rpath-link=$ARM_LIB,-dynamic-linker=/system/bin/linker -L$NDK_HOME/sources/cxx-stl/gnu-libstdc++/libs/x86 -L$NDK_HOME/toolchains/x86-4.9/prebuilt/linux-x86_64/i686-linux-android/lib -L$ARM_LIB  -lc -lgcc -lm -ldl  "  
  
FLAGS="--host=i686-linux --enable-static --disable-shared"  
  
export CXX="${CROSS_COMPILE}g++ --sysroot=${SYSROOT}"  
  
export LDFLAGS="$LDFLAGS"  
  
export CC="${CROSS_COMPILE}gcc --sysroot=${SYSROOT}"  
  
./configure $FLAGS --prefix=`pwd`"/build/x86"   
