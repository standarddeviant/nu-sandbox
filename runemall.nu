use std log

# run features.nu
log info $"calling features.nu ..."
source ([. features.nu] | path join)
