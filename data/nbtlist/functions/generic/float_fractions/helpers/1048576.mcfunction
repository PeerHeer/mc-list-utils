scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 1048576..2097151 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 1048576
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-1048576 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-1048576 ~ run function nbtlist:generic/float_fractions/helpers/524288
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/524288
