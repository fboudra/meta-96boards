PACKAGECONFIG_remove = "firstboot"

do_install_append() {
    bbplain "INFO: removing machine-id to nullify oe-core behavior"
    rm -f ${D}${sysconfdir}/machine-id
}
