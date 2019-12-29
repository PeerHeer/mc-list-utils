# Author: PeerHeer
#
#> Description
# The 'index_of_first' operation finds the first index where an element occurs.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - listutils:in Data: the element to find the index of.
# - [OPTIONAL] $listutils.function listutils.in: the comparison function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - $listutils.result listutils.out: the index of the data.

function listutils.private:index_of_first