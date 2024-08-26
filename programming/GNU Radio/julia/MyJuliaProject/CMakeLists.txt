cmake_minimum_required(VERSION 3.14)
project(MyJuliaProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Get JULIA_HOME from environment variable
if(NOT DEFINED ENV{JULIA_HOME})
    message(FATAL_ERROR "JULIA_HOME environment variable is not set!")
else()
    set(JULIA_HOME $ENV{JULIA_HOME})
endif()

# Include directories for Julia
set(JULIA_INCLUDE_DIRS "${JULIA_HOME}/include/julia")
include_directories(${JULIA_INCLUDE_DIRS})

# Library directory for Julia
set(JULIA_LIBRARY "${JULIA_HOME}/lib/libjulia.dylib")
link_directories(${JULIA_HOME}/lib)

# Define your source files
set(SOURCES
    src/main.cpp
)

# Add executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link Julia library
target_link_libraries(${PROJECT_NAME} ${JULIA_LIBRARY})

