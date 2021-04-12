PKG_NAME="theodore"
PKG_VERSION="9f1afc6"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/Zlika/theodore"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="Libretro core for Thomson MO/TO emulation."
PKG_TOOLCHAIN="make"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v theodore_libretro.so ${INSTALL}/usr/lib/libretro/
}