scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 33554432..67108863 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 33554432
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-33554432 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-33554432 ~ run function nbtlist:generic/float_fractions/helpers/16777216
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/16777216
