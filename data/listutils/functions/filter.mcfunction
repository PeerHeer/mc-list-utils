# Author: PeerHeer
#
#> Description
# The 'filter' operation filters a list.
#
#> Arguments
# - listutils:in List: the list to filter.
# - [OPTIONAL] $listutils.function listutils.in: the filter function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: the filtered list.

function listutils.private:filter