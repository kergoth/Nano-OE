python () {
    # Allow version-specific checksums
    flags = d.getVarFlags("SRC_URI_%s" % d.getVar("PV", True))
    if flags:
        for flag, value in flags.iteritems():
            d.setVarFlag("SRC_URI", flag, value)
}