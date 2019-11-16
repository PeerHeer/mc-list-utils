#> operations/sort/merge_sort/decompose.mcfunction

data modify storage nbtlist:iterator Temp set value []
data modify storage nbtlist:iterator Temp append from storage nbtlist:iterator Iterable[0]
data modify storage nbtlist:merge_sort TempList append from storage nbtlist:iterator Temp
data remove storage nbtlist:iterator Temp