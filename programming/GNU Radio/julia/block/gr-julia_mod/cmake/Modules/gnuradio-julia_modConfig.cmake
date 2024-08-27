find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_JULIA_MOD gnuradio-julia_mod)

FIND_PATH(
    GR_JULIA_MOD_INCLUDE_DIRS
    NAMES gnuradio/julia_mod/api.h
    HINTS $ENV{JULIA_MOD_DIR}/include
        ${PC_JULIA_MOD_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_JULIA_MOD_LIBRARIES
    NAMES gnuradio-julia_mod
    HINTS $ENV{JULIA_MOD_DIR}/lib
        ${PC_JULIA_MOD_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-julia_modTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_JULIA_MOD DEFAULT_MSG GR_JULIA_MOD_LIBRARIES GR_JULIA_MOD_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_JULIA_MOD_LIBRARIES GR_JULIA_MOD_INCLUDE_DIRS)
