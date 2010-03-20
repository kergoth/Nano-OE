# Sigh, if PV has SRCREV/SRCPV, this causes the world to explode at update_data time, it seems
#OVERRIDES .= ":${PV}"

python () {
    pv = d.getVar("PV", True)

    # Allow version-specific checksums
    flags = d.getVarFlags("SRC_URI_%s" % pv)
    if flags:
        for flag, value in flags.iteritems():
            d.setVarFlag("SRC_URI", flag, value)

    # Necessary until we get PV in OVERRIDES working
    pref = d.getVar("DEFAULT_PREFERENCE_%s" % pv, True)
    if pref:
        d.setVar("DEFAULT_PREFERENCE", pref)
}