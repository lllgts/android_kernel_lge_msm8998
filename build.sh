#!/bin/bash
args="-j$(nproc --all) \
	O=out \
	ARCH=arm64 \
	CLANG_TRIPLE=aarch64-linux-gnu- \
	CROSS_COMPILE=~/gcc4.9-gun/bin/aarch64-linux-android- \
	CC=~/clang14/clang-r437112/bin/clang-14 \
	CROSS_COMPILE_ARM32=~/gcc4.9-eabi/bin/arm-linux-androideabi- "
	make ${args} lineageos_h930_defconfig
	make ${args}
