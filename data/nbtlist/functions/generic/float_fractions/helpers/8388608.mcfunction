scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 8388608..16777215 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 8388608
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-8388608 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-8388608 ~ run function nbtlist:generic/float_fractions/helpers/4194304
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/4194304
