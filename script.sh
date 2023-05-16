#!/bin/sh
git submodule update --init --recursive
cp riscv-binutils.patch binutils/
patch -p 1 < riscv-binutils.patch
cp riscv-gcc.patch gcc/
patch -p 1 < riscv-gcc.patch
