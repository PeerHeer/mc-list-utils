data modify storage dynalist:out List set value []
execute unless score $dynalist.index dynalist.in = $dynalist.index dynalist.in run scoreboard players set $dynalist.index dynalist.in -1
function dynalist.private:operations/initialize
function dynalist.private:operations/pop/pop
scoreboard players reset $dynalist.index dynalist.in