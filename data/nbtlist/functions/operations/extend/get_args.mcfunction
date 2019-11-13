#> operations/extend/get_args.mcfunction
# Get the arguments for the extend operation from 'nbtlist:args'.
#
#> Arguments from nbtlist:ags:
#   List2: the list to add

# Load List into ResultList, then load List2 into List.
# This makes it so that List2 can be appended to List easily without changing
# a lot of code in iterator/iterate_start.
data modify storage nbtlist:iterator ResultList set from storage nbtlist:args List
data modify storage nbtlist:args List set from storage nbtlist:args List2



