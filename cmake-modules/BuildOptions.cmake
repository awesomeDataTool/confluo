include(CMakeDependentOption)

# Components to build
option(BUILD_TESTS "Build with unittests" ON)
option(BUILD_STRESS_TESTS "Build with stress tests" OFF)
option(BUILD_RPC "Build RPC framework" ON)
option(BUILD_DOC "Build documentation" OFF)
option(BUILD_EXAMPLES "Build examples" ON)
CMAKE_DEPENDENT_OPTION(WITH_PY_CLIENT "Build python client" ON "BUILD_RPC" OFF)
CMAKE_DEPENDENT_OPTION(WITH_JAVA_CLIENT "Build java client" ON "BUILD_RPC" OFF)

message(STATUS "----------------------------------------------------------")
message(STATUS "Confluo version:                          ${CONFLUO_VERSION}")
message(STATUS "Build configuration Summary")
message(STATUS "  Build RPC Framework:                    ${BUILD_RPC}")
message(STATUS "    Build python client libraries:        ${WITH_PY_CLIENT}")
message(STATUS "    Build java client libraries:          ${WITH_JAVA_CLIENT}")
message(STATUS "  Build with unit tests:                  ${BUILD_TESTS}")
message(STATUS "  Build documentation:                    ${BUILD_DOC}")
message(STATUS "  Build examples:                         ${BUILD_EXAMPLES}")
message(STATUS "----------------------------------------------------------")
