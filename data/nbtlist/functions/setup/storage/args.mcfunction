#> setup/storage/args.mcfunction
# Initializes nbtlist:args storage.
#
# This storage is meant as temporary storage for arguments of operations.
# When trying to execute an operation, the user should explicitly set values for these arguments,
# even when they are the same as the defaults sepecified here.
#
# This storage is cleared after every operation to avoid conflicts between operations.

# List: used as input list for all operations.
data modify storage nbtlist:args List set from storage nbtlist:format Args.List
# Data: used as input data for 'append', 'prepend', 'insert', 'delete' and 'lookup' operations.
data modify storage nbtlist:args Data set from storage nbtlist:format Args.Data
# Index: used as input index for 'insert', 'delete' and 'lookup' operations.
data modify storage nbtlist:args Index set from storage nbtlist:format Args.Index
# Index: used as second input list for the 'extend' operation.
data modify storage nbtlist:args List2 set from storage nbtlist:format Args.List2