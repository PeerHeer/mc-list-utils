execute unless score #nbtlist.operation.delete.index nbtlist.var matches -1 run function nbtlist:operations/delete/delete_index
execute if score #nbtlist.operation.delete.index nbtlist.var matches -1 run function nbtlist:operations/delete/delete_data