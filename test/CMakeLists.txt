cmake_minimum_required(VERSION 2.8.7)

# Build the dynamic library that generated Google test.
set(CMAKE_GOOGLE_TEST_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/googletest/googletest)
list(APPEND TEST_INCLUDE_DIRS ${CMAKE_GOOGLE_TEST_PATH}
                              ${CMAKE_GOOGLE_TEST_PATH}/include)

include_directories(${TEST_INCLUDE_DIRS})
file(GLOB GTEST_SRC_DIR ${CMAKE_GOOGLE_TEST_PATH}/src/gtest-all.cc
                        ${CMAKE_GOOGLE_TEST_PATH}/src/gtest_main.cc)
add_library(gtest_shared SHARED ${GTEST_SRC_DIR})

# Generate an executable file for the project tests.
link_directories(${PROJECT_PATH}/build/lib)
file(GLOB PROJECT_TEST_SRC ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)
add_executable(algorithm_test ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
                              ${PROJECT_TEST_SRC})
target_link_libraries(algorithm_test pthread gtest_shared)

