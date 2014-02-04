cmake_minimum_required(VERSION 2.8.12)

if(NOT TOOLCHAIN_INFO_FILE)
  message(FATAL_ERROR "TOOLCHAIN_INFO_FILE is empty")
endif()

if(EXISTS "${TOOLCHAIN_INFO_FILE}")
  message(FATAL_ERROR "${TOOLCHAIN_INFO_FILE} already exists")
endif()

file(
    WRITE
    "${TOOLCHAIN_INFO_FILE}"
    "Environment:\n"
    "    HUNTER_ROOT: $ENV{HUNTER_ROOT}\n"
    "    CXX: $ENV{CXX}\n"
    "    CC: $ENV{CC}\n"
    "C++ compiler:\n"
    "    CMAKE_CXX_COMPILER: ${CMAKE_CXX_COMPILER}\n"
    "    CMAKE_CXX_COMPILER_ABI: ${CMAKE_CXX_COMPILER_ABI}\n"
    "    CMAKE_CXX_COMPILER_ID: ${CMAKE_CXX_COMPILER_ID}\n"
    "    CMAKE_CXX_COMPILER_VERSION: ${CMAKE_CXX_COMPILER_VERSION}\n"
    "C compiler:\n"
    "    CMAKE_C_COMPILER: ${CMAKE_C_COMPILER}\n"
    "    CMAKE_C_COMPILER_ABI: ${CMAKE_C_COMPILER_ABI}\n"
    "    CMAKE_C_COMPILER_ID: ${CMAKE_C_COMPILER_ID}\n"
    "    CMAKE_C_COMPILER_VERSION: ${CMAKE_C_COMPILER_VERSION}\n"
    "C++ Flags:\n"
    "    CMAKE_CXX_FLAGS: ${CMAKE_CXX_FLAGS}\n"
    "    CMAKE_CXX_FLAGS_DEBUG: ${CMAKE_CXX_FLAGS_DEBUG}\n"
    "    CMAKE_CXX_FLAGS_MINSIZEREL: ${CMAKE_CXX_FLAGS_MINSIZEREL}\n"
    "    CMAKE_CXX_FLAGS_RELEASE: ${CMAKE_CXX_FLAGS_RELEASE}\n"
    "C Flags:\n"
    "    CMAKE_C_FLAGS: ${CMAKE_C_FLAGS}\n"
    "    CMAKE_C_FLAGS_DEBUG: ${CMAKE_C_FLAGS_DEBUG}\n"
    "    CMAKE_C_FLAGS_MINSIZEREL: ${CMAKE_C_FLAGS_MINSIZEREL}\n"
    "    CMAKE_C_FLAGS_RELEASE: ${CMAKE_C_FLAGS_RELEASE}\n"
    "Some hunter variables:\n"
    "    HUNTER_DISABLE_SHARED_LIBS: ${HUNTER_DISABLE_SHARED_LIBS}\n"
    "    HUNTER_ROOT: ${HUNTER_ROOT}\n"
    "    HUNTER_CMAKE_GENERATOR: ${HUNTER_CMAKE_GENERATOR}\n"
    "Polly toolchains:\n"
    "    CMAKE_OSX_SYSROOT: ${CMAKE_OSX_SYSROOT}\n"
    "    CUSTOM_LIBCXX_LIBRARY_LOCATION: ${CUSTOM_LIBCXX_LIBRARY_LOCATION}\n"
    "    IOS_SDK_VERSION: ${IOS_SDK_VERSION}\n"
    "    IPHONEOS_ARCHS: ${IPHONEOS_ARCHS}\n"
    "    IPHONESIMULATOR_ARCHS: ${IPHONESIMULATOR_ARCHS}\n"
    "    XCODE_DEVELOPER_ROOT: ${XCODE_DEVELOPER_ROOT}\n"
    "    XCODE_VERSION: ${XCODE_VERSION}\n"
    "Other:\n"
    "    CMAKE_COMPILER_IS_GNUCXX: ${CMAKE_COMPILER_IS_GNUCXX}\n"
    "    CMAKE_CXX_PLATFORM_ID: ${CMAKE_CXX_PLATFORM_ID}\n"
    "    CMAKE_C_PLATFORM_ID: ${CMAKE_C_PLATFORM_ID}\n"
    "    CMAKE_DEBUG_POSTFIX: ${CMAKE_DEBUG_POSTFIX}\n"
    "    CMAKE_EXE_LINKER_FLAGS: ${CMAKE_EXE_LINKER_FLAGS}\n"
    "    CMAKE_GENERATOR: ${CMAKE_GENERATOR}\n"
    "    CMAKE_SHARED_LINKER_FLAGS: ${CMAKE_SHARED_LINKER_FLAGS}\n"
)