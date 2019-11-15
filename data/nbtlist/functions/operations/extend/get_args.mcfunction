#> operations/extend/get_args.mcfunction
# Get the arguments for the extend operation from 'nbtlist:args'.
#
#> Arguments:
#   nbtlist:args List2: the list to extend the list with.

# Load List into ResultList, then load List2 into List.
# This makes it so that List2 can be appended to List easily without changing
# a lot of code in the iterator/iterate_start function.
data modify storage nbtlist:iterator ResultList set from storage nbtlist:args List
data modify storage nbtlist:args List set from storage nbtlist:args List2



