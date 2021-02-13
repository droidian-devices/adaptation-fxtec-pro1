#!/bin/sh
#
# F(x)tec Pro1's vendor partition has a bug where the
# libstdc++ library found in the lib64 directory is the
# 32-bit version.
#
# We workaround that by changing HYBRIS_LD_LIBRARY_PATH
# so that the libraries coming from our Android system
# image are preferred instead.
#

export HYBRIS_LD_LIBRARY_PATH="/android/system/lib64:/android/vendor/lib64"
