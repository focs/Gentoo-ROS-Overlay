# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_MULTIPLE_ABIS="1"

PYTHON_COMPAT=( python2_7 python3_3 )
inherit distutils-r1

DESCRIPTION="Installer for ROS (robot operating system)."
#HOMEPAGE="http://ww.ros.org"
HOMEPAGE="https://github.com/ros-infrastructure/${PN}/"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="git mercurial subversion"

DEPEND="sci-electronics/catkin_pkg
		sci-electronics/rospkg
		sci-electronics/rosdistro
		dev-vcs/wstool
		dev-python/setuptools
		dev-python/pyyaml
        git? ( dev-vcs/git )
		mercurial? ( dev-vcs/mercurial )
		subversion? ( dev-vcs/subversion )"
RDEPEND="${DEPEND}"

