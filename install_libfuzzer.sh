#!/bin/bash
if [ -e libFuzzer ]; then
    (cd libFuzzer && git pull)
else
    git clone https://chromium.googlesource.com/chromium/llvm-project/compiler-rt/lib/fuzzer ../libFuzzer
fi

cd ../libFuzzer; ./build.sh
