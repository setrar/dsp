# FindJulia.cmake

find_path(JULIA_INCLUDE_DIRS julia.h
  HINTS ${Julia_DIR}/include/julia
)

find_library(JULIA_LIBRARY
  NAMES julia
  HINTS ${Julia_DIR}/lib
)

if (JULIA_INCLUDE_DIRS AND JULIA_LIBRARY)
  set(JULIA_FOUND TRUE)
  set(Julia_INCLUDE_DIR ${JULIA_INCLUDE_DIRS})
  set(Julia_LIBRARY_DIR ${Julia_DIR}/lib)
  set(Julia_LIBRARIES ${JULIA_LIBRARY})
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Julia DEFAULT_MSG JULIA_INCLUDE_DIRS JULIA_LIBRARY)

