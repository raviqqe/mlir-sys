#!/bin/sh

set -e

llvm_version=15

brew update
brew install llvm@$llvm_version pkg-config

echo MLIR_SYS_150_PREFIX=$(brew --prefix)/opt/llvm@$llvm_version >>$GITHUB_ENV

ls -l $(brew --prefix)/lib
file /home/linuxbrew/.linuxbrew/lib/libz3.so
file /home/linuxbrew/.linuxbrew/lib/libzstd.so.1.5.2
