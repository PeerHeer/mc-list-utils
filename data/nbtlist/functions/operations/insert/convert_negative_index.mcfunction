#> operations/insert/convert_negative_index.mcfunction
# Converts negative index to positive index.

# Get list length.
execute store result score #nbtlist.length nbtlist.var run data get storage nbtlist:args List
# Compute positive index.
scoreboard players operation #nbtlist.length nbtlist.var += #nbtlist.operation.args.index nbtlist.var
scoreboard players operation #nbtlist.operation.args.index nbtlist.var = #nbtlist.length nbtlist.var
scoreboard players add #nbtlist.operation.args.index nbtlist.var 1
scoreboard players reset #nbtlist.length nbtlist.var