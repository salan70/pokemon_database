.PHONY: setup
setup:
	melos bootstrap
	melos run clean
	melos run pub-get

.PHONY: generate
generate:
	melos run run-build-runner build --delete-conflicting-outputs

