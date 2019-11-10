#> nbtlist:setup/setup_storage/operation
# Setup the nbtlist:operation storage.
# This storage is meant to use for doing operations on copies of data.
# This storage should not be used for storing long-term, since it will be
# re-initialized on reload.

# Used as the list to make operation on.
data modify storage nbtlist:operation List set from storage nbtlist:format Operation.List

# Used as parameters for different operations.
data modify storage nbtlist:operation Params set from storage nbtlist:format Operation.Params

# Used as results of different operations.
data modify storage nbtlist:operation Result set from storage nbtlist:format Operation.Result