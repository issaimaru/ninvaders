# RISC-V cross-compilation toolchain file
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)

set(SDK_PATH "$ENV{HOME}/riscv-sdk/host")

# Compilers
set(CMAKE_C_COMPILER "${SDK_PATH}/bin/riscv64-buildroot-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER "${SDK_PATH}/bin/riscv64-buildroot-linux-gnu-g++")

# imacのみでビルドする
set(RISCV_FLAGS "-march=rv64imac -mabi=lp64")

set(CMAKE_C_FLAGS "${RISCV_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${RISCV_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${RISCV_FLAGS}" CACHE STRING "" FORCE)

# Search path
set(CMAKE_FIND_ROOT_PATH "${SDK_PATH}/riscv64-buildroot-linux-gnu/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)