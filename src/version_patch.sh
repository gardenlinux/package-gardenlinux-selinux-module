#!/usr/bin/env bash
set -Eeuo pipefail

# Obtain version from changelog file
GL_SELINUX_MOD_VER=$(awk 'NR==1{print $2}' debian/changelog | sed 's/[()]//g' | sed 's/.//6g')
# Patch module version accroding to the changelog
sed -i "s/@@VER@@/$GL_SELINUX_MOD_VER/" gardenlinux-selinux-module.te
