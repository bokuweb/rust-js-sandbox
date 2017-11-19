extern crate libc;

extern "C" {
  fn hello_rust(message_ptr: *const u8, message_len: usize);
}

fn main() {
}

#[no_mangle]
pub fn test() {
    let mes = "hello";
    unsafe {
        hello_rust(mes.as_ptr(), mes.len());
    }
}
