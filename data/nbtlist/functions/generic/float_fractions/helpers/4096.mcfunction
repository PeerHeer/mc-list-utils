scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 4096..8191 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 4096
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-4096 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-4096 ~ run function nbtlist:generic/float_fractions/helpers/2048
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/2048
