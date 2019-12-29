function listutils.private:operations/initialize
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains
execute unless score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/custom_match/contains

scoreboard players reset $listutils.function listutils.in