#> operations/sort/merge_sort/decompose_list.mcfunction
# Decomposes a list into a list of lists, each containing one element of th eoriginal list.
# A Temp list is created, an element inserted and then Temp is appende to TempList in nbtlist:merge_sort.
#
#> Arguments:
#   nbtlist:iterator Iterable: the list that needs to be decomposed.
#> Returns:
#   nbtlist:merge_sort TempList: the decomposed list.

data modify storage nbtlist:iterator Temp set value []
data modify storage nbtlist:iterator Temp append from storage nbtlist:iterator Iterable[0]
data modify storage nbtlist:merge_sort TempList append from storage nbtlist:iterator Temp
data remove storage nbtlist:iterator Temp