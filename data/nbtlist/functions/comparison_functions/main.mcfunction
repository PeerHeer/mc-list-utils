#> comparison_functions/main.mcfunction
# Place calls to your custom comparison functions here.
# The default comparison function is compare_ints, which compares two integers.
# Make sure you have given the correct score to #nbtlist.compare.function when sorting!
#
#> Make sure to return the correct values!
#   -1 if Compare[0] is smaller, 0 Compare[0] and Compare[1] are equal, 1 if Compare[1] is smaller.
#
#> Arguments:
#   nbtlist:compare Compare: contains the values to be compared.
#   #nbtlist.compare.function nbtlist.var: the comparison function to be executed.
#> Returns:
#   #nbtlist.compare.result nbtlist.var: -1 if Compare[0] is smaller, 0 Compare[0] and Compare[1] are equal, 1 if Compare[1] is smaller.

# Default comparison functions.
# Generic: can be used for all kinds of elements. Works as expected for ints, shorts and bytes.
#          works using length for compounds, lists and strings.
execute if score #nbtlist.compare.function nbtlist.var matches 0 run function nbtlist:comparison_functions/default/compare_generic
execute if score #nbtlist.compare.function nbtlist.var matches 1 run function nbtlist:comparison_functions/default/compare_ints
execute if score #nbtlist.compare.function nbtlist.var matches 2 run function nbtlist:comparison_functions/default/compare_longs

################################################
# Place your custom comparison functions here. #
################################################
execute if score #nbtlist.compare.function nbtlist.var matches 100 run function nbtlist:comparison_functions/custom/compare_ids
