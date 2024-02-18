use std log
source utils.nu

let tml = 'https://raw.githubusercontent.com/nushell/nushell/main/Cargo.toml'
let f = get-features $tml
print $"features of ($tml) ="
print $f
