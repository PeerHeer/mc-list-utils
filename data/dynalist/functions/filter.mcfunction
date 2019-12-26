# Author: PeerHeer
#
#> Description
# The 'filter' operation filters a list.
#
#> Arguments
# - dynalist:in List: the list to filter.
# - [OPTIONAL] $dynalist.function dynalist.in: the filter function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: the filtered list.

function dynalist.private:filter