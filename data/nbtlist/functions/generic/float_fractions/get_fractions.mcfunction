# Get the fraction of the first float.
scoreboard players operation #nbtlist.generic.float_fractions.pos nbtlist.var = #nbtlist.compare.float1.integral nbtlist.var
data modify entity @s Pos[1] set from storage nbtlist:compare Compare[0]
execute at @s run function nbtlist:generic/float_fractions/check_integral
execute store result score #nbtlist.compare.float1.fraction nbtlist.var run data get entity @s Pos[1] 1000000000

# Get the fraction of the second float.
scoreboard players operation #nbtlist.generic.float_fractions.pos nbtlist.var = #nbtlist.compare.float2.integral nbtlist.var
data modify entity @s Pos[1] set from storage nbtlist:compare Compare[1]
execute at @s run function nbtlist:generic/float_fractions/check_integral
execute store result score #nbtlist.compare.float2.fraction nbtlist.var run data get entity @s Pos[1] 1000000000

tp @s ~ 0.5 ~