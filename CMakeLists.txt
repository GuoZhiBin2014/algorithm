cmake_minimum_required(VERSION 2.8.7)
project(Offline C CXX)

set(PROJECT_PATH ${CMAKE_CURRENT_SOURCE_DIR})
set(THIRD_PARTY_PATH ${CMAKE_CURRENT_SOURCE_DIR})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -pthread -Wfatal-errors -fstack-protector-all -D_FORTIFY_SOURCE=2 -O2")

add_subdirectory(data_structure)
add_subdirectory(test)

