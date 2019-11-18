scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 16777216..33554431 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 16777216
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-16777216 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-16777216 ~ run function nbtlist:generic/float_fractions/helpers/8388608
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/8388608
