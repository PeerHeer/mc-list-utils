#> setup/storage/sort/merge_sort.mcfunction
# Initializes nbtlist:merge_sort.
# Storage used for sorting a list using merge sort.

# Temporary lists to store intermediate steps in.
data modify storage nbtlist:merge_sort TempList set value []

# The ResultList is the resulting sorted list.
data modify storage nbtlist:merge_sort ResultList set value []