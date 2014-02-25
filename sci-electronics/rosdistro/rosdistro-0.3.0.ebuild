# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_MULTIPLE_ABIS="1"

PYTHON_COMPAT=( python2_7 python3_3 )
inherit distutils-r1

DESCRIPTION="Tools to work with catkinized rosdistro files."
#HOMEPAGE="http://www.ros.org"
HOMEPAGE="https://github.com/ros-infrastructure/${PN}/"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/pyyaml"
RDEPEND="${DEPEND}"

