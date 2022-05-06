#Creater: abcd567
#Maintener: abcd567

pkgname=readsb
pkgver=latest
pkgrel=1
arch=('x86_64' 'i686' 'armh6' 'armh7' 'armv6l' 'armv7l' 'armv6h' 'armv7h')
license=('GPL')

makedepends=('git')
depends=('rtl-sdr')
conflicts=('dump1090'
           'dump1090-fa'
           'dump1090-mutability'
           'dump1090-fa-git'
           'dump1090-mutability-git'
           'dump1090-git'
           'dump1090_mr-git')

  echo ""
  echo ""
  echo -e "\e[92m TOOLS REQUIRED TO BUILD PACKAGE ARE:\e[97m"
  echo -e "\e[93m binutils, make, fakeroot, pkgconf, and gcc\e[97m"
  echo -e "\e[97m CHECKING TOOLS, MISSING TOOLS WILL BE OFFERED FOR INSTALLATION ....."
  echo -e "\e[91m \"makepkg\" WILL FAIL IF  MISSING TOOLS ARE NOT INSTALLED \e[97m"
  echo ""
  sudo pacman -Sy --needed binutils make fakeroot pkgconf gcc 

echo -e "\e[93mPackage building is running in background \e[97m"
echo -e "\e[93mIt will take a while to display progress, please wait.... \e[97m"

source=('readsb::git+https://github.com/wiedehopf/readsb.git')

md5sums=('SKIP')

install="foo.install"

pkgver() {
  cd $srcdir/readsb
  #printf "%s" "$(git describe --tags | sed 's/-.*//')"
  printf "%s" "1.0"
}

build() {
  cd ${srcdir}/readsb
  make RTLSDR=yes
}

package() {
  mkdir -p ${pkgdir}/usr/bin
  cp  ${srcdir}/readsb/readsb  ${pkgdir}/usr/bin/readsb
  
  mkdir -p ${pkgdir}/etc/default
  cp ${srcdir}/readsb/debian/readsb.default  ${pkgdir}/etc/default/readsb

  mkdir -p ${pkgdir}/usr/lib/systemd/system
  cp ${srcdir}/readsb/debian/readsb.service  ${pkgdir}/usr/lib/systemd/system/readsb.service
}

