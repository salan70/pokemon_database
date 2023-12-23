.PHONY: setup
setup:
	fvm dart clean
	fvm dart pub get

.PHONY: generate
generate:
	fvm dart run build_runner build --delete-conflicting-outputs

