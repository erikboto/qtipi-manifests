#!/bin/bash

export TEMPLATECONF=`pwd`/sources/meta-qtipi/misc
source sources/poky/oe-init-build-env build
bitbake core-image-qtipi
