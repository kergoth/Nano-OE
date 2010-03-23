require nano.inc
require checksums.inc

PR = "${INC_PR}.0"
BBVERSIONS = "1.0.[7-9]"

SRC_URI_append = " \
    file://makefile.patch;patch=1 \
    file://aclocal.patch;patch=1 \
"
