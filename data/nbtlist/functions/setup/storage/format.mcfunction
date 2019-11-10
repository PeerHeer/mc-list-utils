#> nbtlist:setup/setup_storage/format
# Setup the nbtlist:format storage.
# This storage is meant to be used as a format for nbtlist:operation.

# Parameters format.
data modify storage nbtlist:format Operation.Params.Append set value {Data: {}}
data modify storage nbtlist:format Operation.Params.Prepend set value {Data: {}}
data modify storage nbtlist:format Operation.Params.Insert set value {Data: {}, Index: 0}
data modify storage nbtlist:format Operation.Params.Delete set value {Data: {}, Index: 0}
data modify storage nbtlist:format Operation.Params.Lookup set value {Data: {}, Index: 0}
data modify storage nbtlist:format Operation.Params.Merge set value {List: []}

# Input list.
data modify storage nbtlist:format Operation.List set value []

# Result format.
data modify storage nbtlist:format Operation.Result.Append set value {Success: 0b, List: []}
data modify storage nbtlist:format Operation.Result.Prepend set value {Success: 0b, List: []}
data modify storage nbtlist:format Operation.Result.Insert set value {Success: 0b, List: []}
data modify storage nbtlist:format Operation.Result.Delete set value {Success: 0b, List: []}
data modify storage nbtlist:format Operation.Result.Lookup set value {Success: 0b, Data: {}, Index: 0}
data modify storage nbtlist:format Operation.Result.Merge set value {Success: 0b, List: []}

