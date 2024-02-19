use std log

# run features.nu
log info $"calling features.nu ..."
source ([. features.nu] | path join)

log info $"calling mediancsv.nu ..."
let t = source ([. mediancsv.nu] | path join)

log info $"output of mediancsv.nu:"
echo $t
log info $"num csv files   = ($t | length)"
log info $"median csv size = ($t | get size | math median)"
log info $"avg csv size    = ($t | get size | math avg)"
log info $"max csv size    = ($t | get size | math max)"