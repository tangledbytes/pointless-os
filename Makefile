run:
	cargo run

build:
	cargo build

setup:
	rustup component add llvm-tools-preview
	cargo install bootimage

.PHONY: run build setup