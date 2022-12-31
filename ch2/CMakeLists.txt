cmake_minimum_required( VERSION 2.8)

project( HelloSLAM)

set( CMAKE_BUILD_TYPE  "Debug")

add_executable( helloSLAM helloSLAM.cpp)

add_library( Hello libHelloSLAM.cpp )

add_executable( userHello userHello.cpp)
target_link_libraries(userHello Hello)

