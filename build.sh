#!/bin/bash
rm -f checkBytes*.tar checkBytes*.tar.gz

CHECKBYTES_VERSION=$(grep "define CHECKBYTES_VERSION" checkBytes.c | cut -d'"' -f2)
tar -cvf checkBytes-$CHECKBYTES_VERSION.tar Makefile checkBytes.c
gzip checkBytes-$CHECKBYTES_VERSION.tar

echo "Available Now: checkBytes-$CHECKBYTES_VERSION.tar.gz"
