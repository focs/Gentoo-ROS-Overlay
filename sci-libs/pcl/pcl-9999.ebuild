# Copyright 2008-2012 Funtoo Technologies
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit toolchain-funcs cmake-utils git-2

DESCRIPTION="The Point Cloud Library (or PCL) is a large scale, open project for 3D point cloud processing."
HOMEPAGE="http://www.pointclouds.org"
EGIT_REPO_URI="https://github.com/PointCloudLibrary/pcl.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cuda doc mpi +tools +vtk"

RDEPEND="
	>=dev-libs/boost-1.46
	dev-cpp/eigen:3
	>=sci-libs/flann-1.7.1
	>=media-libs/qhull-2010.1
	cuda? ( >=dev-util/nvidia-cuda-toolkit-4 )
	mpi? ( virtual/mpi )
	vtk? ( >=sci-libs/vtk-5.6.0 )
"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )
"

CMAKE_BUILD_TYPE="Release"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_with mpi)
		$(cmake-utils_use_with vtk)
		$(cmake-utils_use_build doc)
		$(cmake-utils_use_build tools)
		$(cmake-utils_use_build test TESTS)
	)

	if use cuda; then
		if [[ "$(gcc-version)" > "4.4" ]]; then
			ewarn "CUDA and >=sys-devel/gcc-4.5 do not play well together. Disabling CUDA support."
			mycmakeargs+=( "-DHAVE_CUDA=OFF" )
		else
			mycmakeargs+=( "-DHAVE_CUDA=ON" )
		fi
	else
		mycmakeargs+=( "-DHAVE_CUDA=OFF" )
	fi

	cmake-utils_src_configure
}
