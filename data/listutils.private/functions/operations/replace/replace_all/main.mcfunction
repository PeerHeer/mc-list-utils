# Author: PeerHeer
#
# Replace all matching elements from a list.

# Check if the list contains the element.
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains

# If a different function than the default was used, the list is iterated through.
execute unless score $listutils.function listutils.in matches 0 run function listutils.private:internal/length
execute unless score $listutils.function listutils.in matches 0 run scoreboard players set $listutils.success listutils.out 1

# If the list contains the element, start iteration.
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/replace/replace_all/iterate_start