# Garden Linux package gardenlinux-selinux-module
## General
This module is based on the `selinux-policy-default` policy from Debian Testing and adds additional Garden Linux specific rules. These rules are shipped as a Debian package for Garden Linux. This package is delivered via Garden Linux repository mirrors.

## Rules
This package contains only additional Garden Linux specific rules. Missing rules for general services or bugs should be reported and fixed in upstream.

## Versioning
Adjusting the version only needs to change the version within the `debian/changelog` file. Needed version information for the module itself will be automatically obtained and set by `version_patch.sh`. Please do not modify this on your own.
