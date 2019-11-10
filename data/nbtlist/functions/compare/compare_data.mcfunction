data modify storage nbtlist:iterator CompareData[0] set from storage nbtlist:iterator Iterable[0]
data modify storage nbtlist:iterator CompareData[1] set from storage nbtlist:iterator Params.Data
execute store success score #nbtlist.compare.not_equal nbtlist.var run data modify storage nbtlist:iterator CompareData[0] set from storage nbtlist:iterator CompareData[1]
data modify storage nbtlist:iterator CompareData set value [{}, {}]