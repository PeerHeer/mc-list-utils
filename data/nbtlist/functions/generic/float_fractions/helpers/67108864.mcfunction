scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 67108864..134217727 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 67108864
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-67108864 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-67108864 ~ run function nbtlist:generic/float_fractions/helpers/33554432
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/33554432
