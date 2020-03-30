FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
DTSPATH = "${THISDIR}/${PN}"

add_custom_dts() {
    install -m 644 "${DTSPATH}/lm16-igw" "${WORKDIR}/git/arch/arm/boot/dts"
}

addtask add_custom_dts before do_preconfigure after do_patch

COMPATIBLE_MACHINE = "lm16-igw"
