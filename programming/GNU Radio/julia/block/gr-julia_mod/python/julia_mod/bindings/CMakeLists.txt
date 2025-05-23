# Copyright 2020 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

########################################################################
# Check if there is C++ code at all
########################################################################
if(NOT julia_mod_sources)
    message(STATUS "No C++ sources... skipping python bindings")
    return()
endif(NOT julia_mod_sources)

########################################################################
# Check for pygccxml
########################################################################
gr_python_check_module_raw("pygccxml" "import pygccxml" PYGCCXML_FOUND)

include(GrPybind)

########################################################################
# Python Bindings
########################################################################

list(APPEND julia_mod_python_files
    julia_block_python.cc python_bindings.cc)

gr_pybind_make_oot(julia_mod ../../.. gr::julia_mod "${julia_mod_python_files}")

# copy bindings extension for use in QA test module
add_custom_command(
    TARGET julia_mod_python
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:julia_mod_python>
            ${PROJECT_BINARY_DIR}/test_modules/gnuradio/julia_mod/)

install(
    TARGETS julia_mod_python
    DESTINATION ${GR_PYTHON_DIR}/gnuradio/julia_mod
    COMPONENT pythonapi)
