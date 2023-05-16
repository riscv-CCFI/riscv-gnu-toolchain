#!/bin/sh
git submodule update --init --recursive
cp riscv-binutils.patch binutils/
cd binutils
patch -p 1 < riscv-binutils.patch
cd ..
cp riscv-gcc.patch gcc/
cd gcc
patch -p 1 < riscv-gcc.patch
cd ..
mkdir ToolInstallationZone
export ABSOLUTEPATH=$(pwd)
./configure --prefix=$ABSOLUTEPATH/ToolInstallationZone
make -j $(nproc)
