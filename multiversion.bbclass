OVERRIDES .= ":${PV}"

python () {
    # Allow version-specific checksums
    versions = d.getVar("BBVERSIONS", True)
    if versions:
        for flag in ("md5sum", "sha256sum"):
            hash = d.getVarFlag("SRC_URI_%s" % d.getVar("PV", True), flag)
            if hash:
                d.setVarFlag("SRC_URI", flag, hash)
                break
}