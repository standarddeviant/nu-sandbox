use std log
def get-features [
    tomlurl: string
] {
    # let's look at the available features of the nu crate by inspecting Cargo.toml
    let a = http get $tomlurl
    let out = $a | get features | columns
    log debug $"$a | columns = \n($a | columns)\n"
    log debug $"$a | get features | columns  = \n($a | get features | columns)\n"
    $out
}
