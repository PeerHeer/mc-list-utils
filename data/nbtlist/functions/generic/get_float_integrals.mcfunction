#> generic/get_float_integrals.mcfunction
# Get the integral parts of two floats.
#
#> Arguments:
#   nbtlist:compare Compare: list containing the floats to be compared.
#> Returns:
#   #nbtlist.compare.float1.integral nbtlist.var: the integral part of the first float.

# Get the integral of the float in Compare[0]
execute store result score #nbtlist.compare.float1.integral nbtlist.var run data get storage nbtlist:compare Compare[0] 10.0
scoreboard players operation #nbtlist.compare.float1.integral nbtlist.var /= #nbtlist.compare.float.scale nbtlist.const

# Get the integral of the float in Compare[1]
execute store result score #nbtlist.compare.float2.integral nbtlist.var run data get storage nbtlist:compare Compare[1] 10.0
scoreboard players operation #nbtlist.compare.float2.integral nbtlist.var /= #nbtlist.compare.float.scale nbtlist.const