# Author: PeerHeer
#
#> Description
# The 'index_of_all' operation finds all indices where an element occurs.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - listutils:in Data: the element to find the index of.
# - [OPTIONAL] $listutils.function listutils.in: the comparison function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: list that contains all indices, ordered from large to small.

function listutils.private:index_of_all