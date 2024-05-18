PKG_NAME="mojozork"
PKG_VERSION="5c8d81f8db53c206ace6952472e7a7e68bd8e752"
PKG_LICENSE="zlib"
PKG_SITE="https://github.com/icculus/mojozork"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A simple Z-Machine implementation in a single C file."
PKG_TOOLCHAIN="cmake"

PKG_CMAKE_OPTS_TARGET="-DLIBRETRO=ON"

pre_make_target() {
  find ${PKG_BUILD} -name flags.make -exec sed -i "s:isystem :I:g" \{} \;
  find ${PKG_BUILD} -name build.ninja -exec sed -i "s:isystem :I:g" \{} \;
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp -v ${PKG_BUILD}/.${TARGET_NAME}/mojozork_libretro.so ${INSTALL}/usr/lib/libretro/
}

