# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit cmake-utils

DESCRIPTION="a portable Open Source library to import various well-known 3D model formats in an uniform manner."
HOMEPAGE="http://assimp.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/assimp-3.0/assimp--3.0.1270-full.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S=${WORKDIR}/assimp--3.0.1270-sdk
