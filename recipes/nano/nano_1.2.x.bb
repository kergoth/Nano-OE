require nano.inc
require checksums.inc

PR = "${INC_PR}.1"
BBVERSIONS = "1.2.[0-5]"

SRC_URI_append = " \
    file://makefile.patch;patch=1 \
    file://configure.patch;patch=1 \
"
