# Author: PeerHeer
#
#> Description
# The 'fold_left' operation folds a list from the left.
#
#> Arguments
# - listutils:in List: the list to fold.
# - [OPTIONAL] listutils:in Data: the initial value of the result (NBT).
# - [OPTIONAL] $listutils.init_value listutils.in: the initial value of the result (score, default: 0).
# - [OPTIONAL] $listutils.function listutils.in: the fold function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - $listutils.result listutils.out: the result of the fold (score).
# - listutils:out Data: the result of the fold (NBT).

function listutils.private:fold_left