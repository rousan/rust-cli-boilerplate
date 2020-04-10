extern crate rust_cli_boilerplate;
use clap::{App, Arg};

fn main() {
    let matches = App::new("Rust CLI Boilerplate")
        .version(env!("CARGO_PKG_VERSION"))
        .author("Rousan Ali <rousanali786@gmail.com>")
        .about("A boilerplate for the Rust command line applications")
        .arg(Arg::with_name("file").value_name("PATH").index(1).required(true))
        .get_matches();

    let file_path = matches.value_of("file").unwrap();
    let file_size = rust_cli_boilerplate::get_file_size(file_path).expect("File does not exist or can't access");

    println!("File size: {} bytes", file_size);
}
