data modify storage listutils:out List set value []

function listutils.private:operations/initialize
function listutils.private:operations/slice/main

scoreboard players reset $listutils.index.first listutils.in
scoreboard players reset $listutils.index.last listutils.in