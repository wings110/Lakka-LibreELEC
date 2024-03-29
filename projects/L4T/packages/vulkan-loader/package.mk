PKG_NAME="vulkan-loader"
PKG_VERSION="4c46ad7f463d27e0d999e5f06633fd45310f34b6"
PKG_LICENSE="Apache 2.0"
PKG_SITE="https://github.com/KhronosGroup/VulkanSC-Loader"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain cmake:host Python3 vulkan-headers xrandr"
PKG_LONGDESC="Vulkan Installable Client Driver (ICD) Loader."

PKG_CMAKE_OPTS_TARGET="-DBUILD_WSI_WAYLAND_SUPPORT=off \
                       -DVulkanHeaders_INCLUDE_DIR=${SYSROOT_PREFIX}/usr/include \
                       -DBUILD_WSI_XCB_SUPPORT=on \
                       -DBUILD_WSI_XLIB_SUPPORT=on \
                       -DBUILD_TESTS=off"
