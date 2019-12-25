function dynalist.private:operations/initialize
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operations/contains/exact_match/contains
execute unless score $dynalist.function dynalist.in matches 0 run function dynalist.private:operations/contains/custom_match/contains

scoreboard players reset $dynalist.function dynalist.in