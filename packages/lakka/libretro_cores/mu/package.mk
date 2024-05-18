PKG_NAME="mu"
PKG_VERSION="865acf3a2889dfe02863bbfb9c5b3cfee8620c22"
PKG_LICENSE="Non-commercial"
PKG_SITE="https://github.com/libretro/Mu"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A new Palm OS emulator targeting compatibility, speed and accuracy in that order."
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-C ../libretroBuildSystem"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v ../libretroBuildSystem/mu_libretro.so ${INSTALL}/usr/lib/libretro/mu_libretro.so
}
