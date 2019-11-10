#> nbtlist:setup/setup_storage/iterator
# Setup the nbtlist:iterator storage.
# This storage is meant to use for doing operations on copies of data.
# This storage should not be used for storing long-term, since it will be
# re-initialized on reload.

data modify storage nbtlist:iterator Iterable set value []
data modify storage nbtlist:iterator CompareData set value [{}, {}]