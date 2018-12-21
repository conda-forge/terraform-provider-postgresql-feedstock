#!/usr/bin/env bash
pushd "$GOPATH/src/github.com/terraform-providers/$PKG_NAME"
make build
make test

# Install Binary into PREFIX/bin
mkdir -p $PREFIX/bin
mv $GOPATH/bin/$PKG_NAME $PREFIX/bin/${PKG_NAME}_v${PKG_VERSION}_x4
