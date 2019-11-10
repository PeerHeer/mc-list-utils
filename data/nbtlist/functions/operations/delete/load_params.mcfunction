scoreboard players set #nbtlist.operation.delete.index nbtlist.var -1
# Load params
data modify storage nbtlist:iterator Params set from storage nbtlist:operation Params.Delete
# Check if Data is present. If it is, ignore Index.
execute store result score #nbtlist.operation.delete.has_data nbtlist.var run data get storage nbtlist:iterator Params.Data
execute if score #nbtlist.operation.delete.has_data nbtlist.var matches 0 store result score #nbtlist.operation.delete.index nbtlist.var run data get storage nbtlist:iterator Params.Index