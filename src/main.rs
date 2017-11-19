extern "C" {
  fn hello_rust();
}

fn main() {
}

#[no_mangle]
pub fn test() {
    unsafe {
        hello_rust();
    }
}