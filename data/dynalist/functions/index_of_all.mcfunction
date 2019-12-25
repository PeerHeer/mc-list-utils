# Author: PeerHeer
#
#> Description
# The 'index_of_all' operation finds all indices where an element occurs.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - dynalist:in Data: the element to find the index of.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: list that contains all indices, ordered from large to small.

function dynalist.private:index_of_all