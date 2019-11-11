#> operations/append/append_to_list.mcfunction
# Appends data to the Iterable.
#
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: the success of the operation

# Append to list and store the success in a scoreboard variable.
execute store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator Iterable append from storage nbtlist:args Data

# Set the ResultList to Iterable with the appended element.
data modify storage nbtlist:iterator ResultList set from storage nbtlist:iterator Iterable
