require nano.inc
require checksums.inc

PR = "${INC_PR}.0"
BBVERSIONS = "1.3.[1-12]"

SRC_URI_append = " \
    file://makefile.patch;patch=1 \
    file://configure.patch;patch=1 \
"
