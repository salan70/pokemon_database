.PHONY: setup
setup:
	fvm flutter clean
	fvm flutter pub get

.PHONY: generate
generate:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

