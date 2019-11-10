# Prepend to list and store the success.
execute store success score #nbtlist.operation.success nbtlist.var run data modify storage nbtlist:iterator Iterable prepend from storage nbtlist:operation Params.Prepend.Data

# Store the result.
execute store result storage nbtlist:operation Result.Prepend.Success byte 1.0 run scoreboard players get #nbtlist.operation.success nbtlist.var
data modify storage nbtlist:operation Result.Prepend.List set from storage nbtlist:iterator Iterable