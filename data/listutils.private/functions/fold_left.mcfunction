data modify storage listutils:out Data set value {}
scoreboard players reset $listutils.result listutils.out
execute unless score $listutils.init_value listutils.in = $listutils.init_value listutils.in run scoreboard players set $listutils.init_value listutils.in 0
function listutils.private:operations/initialize
function listutils.private:operations/fold_left/main
scoreboard players reset $listutils.function listutils.in
scoreboard players reset $listutils.init_value listutils.in