.PHONY: setup
setup:
	fvm dart pub get

.PHONY: generate
generate:
	fvm dart run build_runner build --delete-conflicting-outputs

.PHONY: execute
execute:
	fvm dart run bin/execute.dart