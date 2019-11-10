# Load params
data modify storage nbtlist:iterator Params set from storage nbtlist:operation Params.Insert
execute store result score #nbtlist.operation.insert.index nbtlist.var run data get storage nbtlist:iterator Params.Index