# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit cmake-utils

DESCRIPTION="The COLLADA Document Object Model (DOM) is an application programming interface (API) that provides a C++ object representation of a COLLADA XML instance document."
HOMEPAGE="http://sourceforge.net/projects/collada-dom/"

SRC_URI="mirror://sourceforge/collada-dom/collada-dom-${PV}.tgz"
LICENSE="MIT"

SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE=""
DEPEND="sys-libs/zlib[minizip]
		dev-libs/boost
	    dev-libs/libxml2
		dev-libs/libpcre[cxx]"
RDEPEND="${DEPEND}"

S=${WORKDIR}/collada-dom-${PV}

src_configure(){

	MYCMAKEARGS="-DCOLLADA_DOM_INCLUDE_INSTALL_DIR=include" cmake-utils_src_configure
}
