#!/bin/bash
# Check if clang is installed
if ! type clang > /dev/null; then
    git clone https://github.com/llvm/llvm-project.git ../llvm-project
    cd ../llvm-project; mkdir build
    cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm
    make

    # Add llvm/build/bin to PATH

else
   echo "[*] clang already installed"
   clang -v
fi

