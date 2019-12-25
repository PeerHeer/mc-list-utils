# Author: PeerHeer
#
# Outputs the success, result and NBT output of an operation in chat.

tellraw @p [{"text":"Success: "},{"score":{"name":"$dynalist.success","objective":"dynalist.out"},"color":"green"}]
tellraw @p [{"text":"Result: "},{"score":{"name":"$dynalist.result","objective":"dynalist.out"},"color":"yellow"}]
tellraw @p [{"text":"Output List: "},{"nbt":"List","storage":"dynalist:out","color":"aqua"}]
tellraw @p [{"text":"Output Data: "},{"nbt":"Data","storage":"dynalist:out","color":"aqua"}]