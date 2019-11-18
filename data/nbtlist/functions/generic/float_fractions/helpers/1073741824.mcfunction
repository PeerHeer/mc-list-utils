scoreboard players set #nbtlist.generic.float_fractions.success nbtlist.var 0
execute store success score #nbtlist.generic.float_fractions.success nbtlist.var if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 1073741824..2147483647 run scoreboard players remove #nbtlist.generic.float_fractions.pos nbtlist.var 1073741824
execute if score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-1073741824 ~ run teleport @s ~ ~ ~
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 1 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~-1073741824 ~ run function nbtlist:generic/float_fractions/helpers/536870912
execute if score #nbtlist.generic.float_fractions.success nbtlist.var matches 0 unless score #nbtlist.generic.float_fractions.pos nbtlist.var matches 0 positioned ~ ~ ~ run function nbtlist:generic/float_fractions/helpers/536870912
