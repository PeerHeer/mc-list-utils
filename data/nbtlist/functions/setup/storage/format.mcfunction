#> setup/setup_storage/format
# Setup the nbtlist:format storage.
#
# This storage is used as a format for all other storages.
# This format contains default values for these storages.
#
# This storage should not be changed by the user, unless he/she
# knows what he/she is doing.

# Format for the 'nbtlist:args' storage.
data modify storage nbtlist:format Args.List set value []
data modify storage nbtlist:format Args.Data set value {}
data modify storage nbtlist:format Args.Index set value 0
data modify storage nbtlist:format Args.List2 set value []

# Format for the 'nbtlist:result' storage.
data modify storage nbtlist:format Result.List set value []
data modify storage nbtlist:format Result.Data set value {}
data modify storage nbtlist:format Result.Index set value -1
data modify storage nbtlist:format Result.Success set value 0b

# Format for the 'nbtlist:iterator' storage.
data modify storage nbtlist:format Iterator.Iterable set value []
data modify storage nbtlist:format Iterator.ResultList set value []
data modify storage nbtlist:format Iterator.Compare set value {}