PKG_NAME="retroarch_joypad_autoconfig"
PKG_VERSION="4e1261f85d26bd235a0febaca083f592eb1da60f"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/retroarch-joypad-autoconfig"
PKG_URL="${PKG_SITE}.git"
PKG_LONGDESC="RetroArch joypad autoconfig files"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  make -C ${PKG_BUILD} install INSTALLDIR="${INSTALL}/etc/retroarch-joypad-autoconfig" DOC_DIR="${INSTALL}/etc/doc/."

  #Remove non tested joycon configs
  rm "${INSTALL}"/etc/retroarch-joypad-autoconfig/udev/Nintendo\ -\ Switch\ Pro\ Controller\ \(old\).cfg
  rm "${INSTALL}"/etc/retroarch-joypad-autoconfig/udev/Nintendo\ -\ Switch\ Pro\ Controller.cfg
  rm "${INSTALL}"/etc/retroarch-joypad-autoconfig/udev/Nintendo-Switch-Online_NES-Controller_Left.cfg
  rm "${INSTALL}"/etc/retroarch-joypad-autoconfig/udev/Nintendo-Switch-Online_NES-Controller_Right.cfg
  rm "${INSTALL}"/etc/retroarch-joypad-autoconfig/udev/Nintendo\ Switch\ Left\ Joy-Con.cfg
  rm "${INSTALL}"/etc/retroarch-joypad-autoconfig/udev/Nintendo\ Switch\ Right\ Joy-Con.cfg
  #Place Working configs
  cp -Pr "${PKG_DIR}"/joypad_configs/* "${INSTALL}"/etc/retroarch-joypad-autoconfig/  

}

