clean:
	rm -rf target *.deb *.deb.sha256sum *.deb.sha512sum

set-version:
	scripts/set-version.sh
git-commit-and-push:
	scripts/git-commit-and-push.sh
create-release:
	scripts/create-release.sh

prepare:
	sudo apt update -y
	sudo apt install pandoc shellcheck fakeroot -y
build: clean
	./build.sh

test-man:
	pandoc src/md/siakhooi-devutils-echo-colors.1.md -s -t man | man -l -

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0

terminalizer:
	terminalizer render docs/terminalizer-echo-colors.yml
