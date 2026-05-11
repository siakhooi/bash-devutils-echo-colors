clean:
	rm -rf target *.deb *.sha256sum *.sha512sum *.rpm ~/rpmbuild
shellcheck:
	scripts/shellcheck.sh
build-deb: clean
	./scripts/build-deb.sh
build-rpm: clean
	scripts/build-rpms.sh
set-version:
	scripts/set-version.sh
release:
	scripts/create-release.sh
all-deb: clean set-version shellcheck build-deb
all-rpm: clean set-version shellcheck build-rpm

prepare-test:
	scripts/bats-test-setup.sh
run-test:
	scripts/bats-test-run.sh

test-man:
	pandoc src/md/siakhooi-echo-colors.1.md -s -t man | man -l -

terminalizer:
	terminalizer render docs/terminalizer-echo-colors.yml

root := justfile_directory()

docker-build-rpm:
	docker run --rm -v {{ root }}:/workspaces docker.io/siakhooi/devcontainer:rpm44 scripts/build-rpms.sh
docker-build-deb:
	docker run --rm -v {{ root }}:/workspaces docker.io/siakhooi/devcontainer:deb2604 scripts/build-deb.sh

all: clean set-version shellcheck docker-build-deb docker-build-rpm
