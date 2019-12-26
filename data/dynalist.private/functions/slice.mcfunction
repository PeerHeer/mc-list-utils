data modify storage dynalist:out List set value []

function dynalist.private:operations/initialize
function dynalist.private:operations/slice/main

scoreboard players reset $dynalist.index.first dynalist.in
scoreboard players reset $dynalist.index.last dynalist.in