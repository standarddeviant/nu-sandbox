
let no_fd = (which 'fd') | is-empty

if ($no_fd) {
    log error "Unable to find the find tool, 'fd'"
    log error "It can be installed with 'cargo install fd-find' among other ways"
    log info "glob **/*.csv is fuctional, but runs ~10x slower than 'fd'"
    
} else {
    log info "finding all (?) csv files in ~ ..."
    let a = fd .csv ~ | lines
    log info $"querying all ($a | length) csv files in ~ ..."
    let b = $a | each {|x| ls $x} | reduce {|x,y| $x ++ $y}
    $b # return value from script
}
