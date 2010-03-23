DESCRIPTION = "GNU nano (Nano's ANOther editor, or \
Not ANOther editor) is an enhanced clone of the \
Pico text editor."
HOMEPAGE = "http://www.nano-editor.org/"
LICENSE = "GPLv2"
SECTION = "console/utils"
DEPENDS = "ncurses"

BRANCH = "${@'.'.join('${PV}'.split('.')[:2])}"
SRC_URI = "http://www.nano-editor.org/dist/v${BRANCH}/nano-${PV}.tar.gz \
           file://m4/"
INC_PR = "r1"

BBCLASSEXTEND = "native"

inherit autotools

# only 16K more to get everything but the kitchen sink
EXTRA_OECONF = "--enable-all"

do_configure_prepend () {
    install -d ${S}/m4
    for m4 in ${WORKDIR}/m4/*.m4; do
        install -m 0644 $m4 ${S}/m4/`basename $m4`
    done
}

MIRRORS_prepend () {
http://www.nano-editor.org/dist/v${BPV}/    ${GNU_MIRROR}/nano/
}