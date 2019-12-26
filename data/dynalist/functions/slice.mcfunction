# Author: PeerHeer
#
#> Description
# The 'slice' operation takes a slice from the list.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - [OPTIONAL] $dynalist.index.first dynalist.in: the first index of the slice (default: 0).
# - [OPTIONAL] $dynalist.index.last dynalist.in: the last index of the slice, exclusive (default: length of list).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: the slice of the original list.

function dynalist.private:slice