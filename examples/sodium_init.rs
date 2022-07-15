extern crate libsodium_rs;

fn main() {
    let sodium_lib = unsafe {
        let sodium_lib = libsodium_rs::sodium_init();
        dbg!(sodium_lib);
    };
    dbg!(sodium_lib);
}
