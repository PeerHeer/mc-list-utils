#> operations/count/get_args.mcfunction
# Get the arguments for the count operation from 'nbtlist:args'.
#
#> Arguments:
#   nbtlist:args Data: the data to count.

# Load arguments for the count operation.
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:args Data
