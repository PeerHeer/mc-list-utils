# Author: PeerHeer
#
# Outputs the success, result and NBT output of an operation in chat.

tellraw @p ["",{"text":"Success: "},{"score":{"name":"$dynalist.success","objective":"dynalist.out"},"color":"green"},{"text":"\n"},{"text":"Result: "},{"score":{"name":"$dynalist.result","objective":"dynalist.out"},"color":"yellow"},{"text":"\n"},{"text":"Output: "},{"nbt":"{}","storage":"dynalist:out","color":"aqua"}]