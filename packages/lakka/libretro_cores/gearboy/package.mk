PKG_NAME="gearboy"
PKG_VERSION="25435a844f283c2583370dc0720bef8910aad9b9"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/drhelius/Gearboy"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Game Boy / Gameboy Color emulator for iOS, Mac, Raspberry Pi, Windows and Linux"
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-C platforms/libretro/"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v platforms/libretro/gearboy_libretro.so ${INSTALL}/usr/lib/libretro/
}
