function listutils.private:operations/initialize
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/count/exact_match/count
execute unless score $listutils.function listutils.in matches 0 run function listutils.private:operations/count/custom_match/count

scoreboard players reset $listutils.function listutils.in