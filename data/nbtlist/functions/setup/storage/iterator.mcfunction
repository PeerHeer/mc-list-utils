#> setup/storage/iterator
# Setup the nbtlist:iterator storage.
#
# This storage is used as temporary storage for iterating over a list while
# doing operations on it.
#
# This storage should not be used by the user in any way, unless he/she knows
# what he/she is doing.

# Iterable: used to temporarily store a list to iterate over it.
data modify storage nbtlist:iterator Iterable set from storage nbtlist:format Iterator.Iterable
# ResultList: used to temporarily store the resulting list from an operation.
data modify storage nbtlist:iterator ResultList set from storage nbtlist:format Iterator.ResultList
# CompareData: used to compare NBT compounds.
data modify storage nbtlist:iterator Compare set from storage nbtlist:format Iterator.Compare