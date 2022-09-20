#!/bin/sh

set -e

llvm_version=15

brew update
brew install llvm@$llvm_version

echo MLIR_SYS_150_PREFIX=$(brew --prefix)/opt/llvm@$llvm_version >>$GITHUB_ENV
echo LD_LIBRARY_PATH=$(brew --prefix)/lib >>$GITHUB_ENV
