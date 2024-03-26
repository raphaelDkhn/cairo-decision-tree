use std::fs;

use cairo_lang_sierra::program::Program;
use cairo_lang_sierra::ProgramParser;
use cairo_lang_sierra_ap_change::calc_ap_changes;

fn main() {
    let program_path = "./model/inference/target/dev/inference.sierra";
    let sierra_program_str = read_file(program_path);

    let sierra_program: Program = ProgramParser::new().parse(&sierra_program_str).unwrap();

    let _ap_change_info =
        calc_ap_changes(&sierra_program, |_, _| 0).inspect_err(|e| eprint!("Error: {:?}", e));
}

fn read_file(path: &str) -> String {
    fs::read_to_string(path).expect("Failed to read file")
}
