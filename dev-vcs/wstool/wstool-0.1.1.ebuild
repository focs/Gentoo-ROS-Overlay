# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_MULTIPLE_ABIS="1"

PYTHON_COMPAT=( python2_7 python3_3 )
inherit distutils-r1

DESCRIPTION="wstool provides commands to manage several local SCM repositories."
#HOMEPAGE="http://www.ros.org"
HOMEPAGE="https://github.com/pycontribs/wstools"
SRC_URI="mirror://pypi/w/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/setuptools
		dev-python/python-dateutil
		dev-python/vcstools"
RDEPEND="${DEPEND}"

