#!/bin/bash
if [ -e ../libFuzzer ]; then
    (cd ../libFuzzer && git pull)
	echo "[*] libFuzzer already cloned"
else
    git clone https://chromium.googlesource.com/chromium/llvm-project/compiler-rt/lib/fuzzer ../libFuzzer
fi

cd ../libFuzzer; ./build.sh
