mergeInto(LibraryManager.library, {
    hello_rust: function (ptr, len) {
        const message = Pointer_stringify(ptr, len);
        console.log(message);
    }
});