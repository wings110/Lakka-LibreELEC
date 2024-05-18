PKG_NAME="atari800"
PKG_VERSION="410d7bf0c215f3444793a9cec51c129e7b67c400"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/libretro-atari800"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Libretro port of Atari800 emulator version 3.1.0"
PKG_TOOLCHAIN="make"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v atari800_libretro.so ${INSTALL}/usr/lib/libretro/
}
