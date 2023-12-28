.PHONY: setup
setup:
	fvm dart pub get

.PHONY: generate
generate:
	fvm dart run build_runner build --delete-conflicting-outputs

.PHONY: exe_fetch_and_save
exe_fetch_and_save:
	fvm dart run bin/fetch_and_save.dart

.PHONY: exe_update_to_ja_name
exe_update_to_ja_name:
	fvm dart run bin/update_to_ja_name.dart