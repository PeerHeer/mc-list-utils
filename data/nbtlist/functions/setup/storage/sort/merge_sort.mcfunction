#> setup/storage/sort/merge_sort.mcfunction
# Initializes nbtlist:merge_sort.
# Storage used for sorting a list using merge sort.

# Temporary lists to store intermediate steps in.
data modify storage nbtlist:merge_sort TempList set value []

# List to store lists to merge in.
data modify storage nbtlist:merge_sort TempList set value []

# The InputList is the list to be sorted.
data modify storage nbtlist:merge_sort InputList set value []

# The ResultList is the resulting sorted list.
data modify storage nbtlist:merge_sort ResultList set value []