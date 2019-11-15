#> storage/result.mcfunction
# Initializes nbtlist:args storage.
#
# This storage is meant as temporary storage for the result of an operation.
# When trying to execute an operation, the user should explicitly set values for these arguments,
# even when they are the same as the defaults sepecified here.
#
# This storage remains after every iteration, but there may be more active datapacks that make
# use of NBT List. Therefore it is desirable to copy the results to a different storage.

# List: contains the list that results from the operations prepend, append, insert, delete, extend, reverse and sort.
data modify storage nbtlist:result List set from storage nbtlist:format Result.List
# Data: contains the data that results from the 'lookup' operation.
data modify storage nbtlist:result Data set from storage nbtlist:format Result.Data
# Success: equal to 1b when the operation was successful. Otherwise, equal to 0b.
data modify storage nbtlist:result Success set from storage nbtlist:format Result.Success
# Index: contains the index that results from the 'lookup' operation.
data modify storage nbtlist:result Index set from storage nbtlist:format Result.Index