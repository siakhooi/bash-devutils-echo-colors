#!/usr/bin/env bash
#
# Description: Build a Debian package from the source files.
# Usage: ./build-deb.sh [options]
#

set -euo pipefail

# ===== Constants =====
readonly TARGET=target
readonly SOURCE=src

# ===== Argument Parsing =====
parse_args() {
	while getopts "h" opt; do
		case "${opt}" in
		h)
			usage
			exit 0
			;;
		*)
			usage
			exit 1
			;;
		esac
	done
	shift $((OPTIND - 1))
}
# ===== Helper Functions =====
copy_control_files() {
	mkdir -p "$TARGET/DEBIAN"
	cp -vr "$SOURCE/DEBIAN"/* "$TARGET/DEBIAN/"
}
copy_binary_files() {
	mkdir -p "$TARGET/usr/bin"
	cp -vr "$SOURCE/bin"/* "$TARGET/usr/bin/"
	chmod 755 "$TARGET/usr/bin/"*
}
build_man_pages() {
	# Man Pages
	mkdir -p $TARGET/usr/share/man/man1/
	pandoc $SOURCE/md/siakhooi-echo-colors.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/siakhooi-echo-colors.1.gz

	## Create links
	(
		cd $TARGET/usr/share/man/man1/
		ln -s siakhooi-echo-colors.1.gz echo.blue.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.cyan.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.green.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.magenta.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.red.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.yellow.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.grey.1.gz
		ln -s siakhooi-echo-colors.1.gz clear-colors.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.error.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.debug.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.warn.1.gz
		ln -s siakhooi-echo-colors.1.gz echo.info.1.gz
	)
}
build_deb_package() {
	fakeroot dpkg-deb --build -Zxz $TARGET
}
rename_deb_package() {
	dpkg-name ${TARGET}.deb
}
generate_checksums() {
	DEBFILE=$(ls ./*.deb)
	sha256sum "$DEBFILE" >"$DEBFILE.sha256sum"
	sha512sum "$DEBFILE" >"$DEBFILE.sha512sum"
}
list_deb_contents() {
	DEBFILE=$(ls ./*.deb)
	dpkg --contents "$DEBFILE"
}
# ===== Main Logic =====
main() {
	parse_args "$@"

	copy_control_files
	copy_binary_files
	build_man_pages

	build_deb_package
	rename_deb_package

	generate_checksums
	list_deb_contents
}
# ===== Entrypoint =====
main "$@"
