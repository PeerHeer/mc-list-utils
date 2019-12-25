function dynalist.private:operations/initialize
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operations/count/exact_match/count
execute unless score $dynalist.function dynalist.in matches 0 run function dynalist.private:operations/count/custom_match/count

scoreboard players reset $dynalist.function dynalist.in