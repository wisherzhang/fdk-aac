NDK_HOME=/home/wisher/android-ndk-r12b
ANDROID_API=android-21  
  
SYSROOT=$NDK_HOME/platforms/$ANDROID_API/arch-x86_64  
  
ANDROID_BIN=$NDK_HOME/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin/  
  
CROSS_COMPILE=${ANDROID_BIN}/x86_64-linux-android-  
   
ARM_INC=$SYSROOT/usr/include  
  
ARM_LIB=$SYSROOT/usr/lib  
  
LDFLAGS=" -nostdlib -Bdynamic -Wl,--whole-archive -Wl,--no-undefined -Wl,-z,noexecstack  -Wl,-z,nocopyreloc -Wl,-soname,/system/lib/libz.so -Wl,-rpath-link=$ARM_LIB,-dynamic-linker=/system/bin/linker -L$NDK_HOME/sources/cxx-stl/gnu-libstdc++/4.9/libs/x86_64 -L$NDK_HOME/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin -L$ARM_LIB  -lc -lgcc -lm -ldl  "  
  
FLAGS="--host=x86_64-linux --enable-static --disable-shared"  
  
export CXX="${CROSS_COMPILE}g++ --sysroot=${SYSROOT}"  
  
export LDFLAGS="$LDFLAGS"  
  
export CC="${CROSS_COMPILE}gcc --sysroot=${SYSROOT}"  
  
./configure $FLAGS --prefix=`pwd`"/build/x86_64"  
