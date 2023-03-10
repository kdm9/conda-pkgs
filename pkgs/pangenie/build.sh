set -xe
mkdir build && cd build
echo "$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$BUILD_PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
echo "$PKG_CONFIG_PATH"
pkg-config --list-all
cmake -DCMAKE_INSTALL_PREFIX="$PREFIX" ..
make -j
mkdir -p $PREFIX/bin $PREFIX/lib
cp src/PanGenie* $PREFIX/bin
cp src/libPanGenieLib.so $PREFIX/lib/
