# Author: PeerHeer
#
#> Description
# The 'pop' deletes the element at an index and returns the deleted element.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - [OPTIONAL] $listutils.index listutils.in: the index to delete (default: -1).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: original list without the deleted element.
# - listutils:out Data: the deleted element.

function listutils.private:pop