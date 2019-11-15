# Convert Index2 from negative to positive.
scoreboard players operation #nbtlist.operation.args.index.temp nbtlist.var = #nbtlist.operation.args.index nbtlist.var
scoreboard players operation #nbtlist.operation.args.index nbtlist.var = #nbtlist.operation.args.index2 nbtlist.var
function nbtlist:generic/convert_negative_index
scoreboard players operation #nbtlist.operation.args.index2 nbtlist.var = #nbtlist.operation.args.index nbtlist.var
scoreboard players operation #nbtlist.operation.args.index nbtlist.var = #nbtlist.operation.args.index.temp nbtlist.var