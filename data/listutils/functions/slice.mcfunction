# Author: PeerHeer
#
#> Description
# The 'slice' operation takes a slice from the list.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - [OPTIONAL] $listutils.index.first listutils.in: the first index of the slice (default: 0).
# - [OPTIONAL] $listutils.index.last listutils.in: the last index of the slice, exclusive (default: length of list).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: the slice of the original list.

function listutils.private:slice