build:
	mkdir -p wasm
	rm -rf target/wasm32-unknown-emscripten/release/deps/*.wasm
	rm -rf target/wasm32-unknown-emscripten/release/rust-wasm-start.js
	cargo rustc --release \
	--target=wasm32-unknown-emscripten -- \
	-C link-args="-s EXPORTED_FUNCTIONS=['_test']" \
	--verbose
	cp target/wasm32-unknown-emscripten/release/rust-wasm-start.js wasm/rust-wasm-start.js
	cp target/wasm32-unknown-emscripten/release/deps/*.wasm wasm/rust-wasm-start.wasm
