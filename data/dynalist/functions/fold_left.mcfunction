# Author: PeerHeer
#
#> Description
# The 'fold_left' operation folds a list from the left.
#
#> Arguments
# - dynalist:in List: the list to fold.
# - [OPTIONAL] $dynalist.function dynalist.in: the fold function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - $dynalist.result dynalist.out: the result of the fold (score).
# - dynalist:out Data: the result of the fold (NBT).

function dynalist.private:fold_left