#> operations/prepend/prepend_to_list.mcfunction
# Prepends data to the Iterable.
#
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: the success of the operation

# Prepend to list and store the success in a scoreboard variable.
execute store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator Iterable prepend from storage nbtlist:args Data

# Set the ResultList to Iterable with the prepended element.
data modify storage nbtlist:iterator ResultList set from storage nbtlist:iterator Iterable