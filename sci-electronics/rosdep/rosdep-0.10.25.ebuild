# Distributed under the terms of the GNU General Public License v2

#EAPI="4-python"
EAPI="5"
PYTHON_MULTIPLE_ABIS="1"

PYTHON_COMPAT=( python2_7 python3_3 )
inherit distutils-r1

#PYTHON_COMPAT=( python2_7 )

DESCRIPTION="rosdep multi-package manager system dependency tool."
HOMEPAGE="https://github.com/ros-infrastructure/${PN}/"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="sci-electronics/catkin_pkg
		sci-electronics/rospkg
		dev-python/pyyaml"
RDEPEND="${DEPEND}"

