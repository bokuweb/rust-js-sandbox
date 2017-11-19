mergeInto(LibraryManager.library, {
    hello_rust: function (ptr, len) {
        // const message = Pointer_stringify(ptr, len);
        const buf = new Uint8Array(Module.HEAPU8.buffer, ptr, len);
        // console.log(message);
        console.log(buf);
    }
});