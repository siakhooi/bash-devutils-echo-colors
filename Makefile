clean:
	rm -rf target *.deb *.sha256sum *.sha512sum *.rpm ~/rpmbuild
build-deb: clean
	./scripts/build-deb.sh
build-rpm: clean
	scripts/build-rpms.sh
check-rpm-version:
	rpm -qf /usr/bin/echo.red
set-version:
	scripts/set-version.sh
git-commit-and-push:
	scripts/git-commit-and-push.sh
create-release:
	scripts/create-release.sh
delete-release:
	gh release delete --cleanup-tag 1.3.0

prepare-test:
	scripts/bats-test-setup.sh
run-test:
	scripts/bats-test-run.sh

set-path:
	export PATH=$PATH:$(pwd)/src/bin
prepare:
	sudo apt update -y
	sudo apt install pandoc shellcheck fakeroot -y

test-man:
	pandoc src/md/siakhooi-devutils-echo-colors.1.md -s -t man | man -l -

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0

terminalizer:
	terminalizer render docs/terminalizer-echo-colors.yml
