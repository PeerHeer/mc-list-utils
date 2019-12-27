# Author: PeerHeer
#
#> Description
# The 'filter' operation maps elements in a list.
#
#> Arguments
# - dynalist:in List: the list to filter.
# - [OPTIONAL] $dynalist.function dynalist.in: the map function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: the mapped list.

function dynalist.private:map