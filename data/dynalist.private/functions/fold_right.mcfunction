data modify storage dynalist:out Data set value {}
scoreboard players reset $dynalist.result dynalist.out
execute unless score $dynalist.init_value dynalist.in = $dynalist.init_value dynalist.in run scoreboard players set $dynalist.init_value dynalist.in 0
function dynalist.private:operations/initialize
function dynalist.private:operations/fold_right/main
scoreboard players reset $dynalist.function dynalist.in
scoreboard players reset $dynalist.init_value dynalist.in