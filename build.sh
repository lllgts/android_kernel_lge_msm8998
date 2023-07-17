#!/bin/bash
args="-j$(nproc --all) \
	O=out \
	ARCH=arm64 \
	CLANG_TRIPLE=aarch64-linux-gnu- \
	CROSS_COMPILE=/home/lllgts/clang13/bin/aarch64-linux-gnu- \
	CC=/home/lllgts/clang/clang-r450784e/bin/clang \
	NM=/home/lllgts/clang/clang-r450784e/bin/llvm-nm \
	CROSS_COMPILE_ARM32=/home/lllgts/clang13/bin/arm-linux-gnueabi- "
	make ${args} lineageos_h930_defconfig
	make ${args}
