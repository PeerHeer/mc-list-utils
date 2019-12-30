# Author: PeerHeer
#
# Outputs the success, result and NBT output of an operation in chat.

tellraw @a [{"text":"Success: "},{"score":{"name":"$listutils.success","objective":"listutils.out"},"color":"green"}]
tellraw @a [{"text":"Result: "},{"score":{"name":"$listutils.result","objective":"listutils.out"},"color":"yellow"}]
tellraw @a [{"text":"Output List: "},{"nbt":"List","storage":"listutils:out","color":"aqua"}]
tellraw @a [{"text":"Output ZipList: "},{"nbt":"ZipList","storage":"listutils:out","color":"aqua"}]
tellraw @a [{"text":"Output Data: "},{"nbt":"Data","storage":"listutils:out","color":"aqua"}]