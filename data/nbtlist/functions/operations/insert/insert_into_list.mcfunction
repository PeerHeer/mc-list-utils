# If insertion index is found, insert the data.
execute if score #nbtlist.operation.insert.index nbtlist.var = #nbtlist.iterator.index nbtlist.var store success score #nbtlist.operation.success nbtlist.var run data modify storage nbtlist:operation Result.Insert.List append from storage nbtlist:iterator Params.Data
execute store result storage nbtlist:operation Result.Insert.Success byte 1.0 run scoreboard players get #nbtlist.operation.success nbtlist.var
data modify storage nbtlist:operation Result.Insert.List append from storage nbtlist:iterator Iterable[0]