#!/bin/sh

set -e

llvm_version=15

brew update
brew install llvm@$llvm_version

echo MLIR_SYS_150_PREFIX=$(brew --prefix)/opt/llvm@$llvm_version >>$GITHUB_ENV

if [ $(uname) = Linux ]; then
  sudo apt -y install libz3-dev libzstd-dev
fi
