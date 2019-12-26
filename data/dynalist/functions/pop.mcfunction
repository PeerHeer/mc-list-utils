# Author: PeerHeer
#
#> Description
# The 'pop' deletes the element at an index and returns the deleted element.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - [OPTIONAL] $dynalist.index dynalist.in: the index to delete (default: -1).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: original list without the deleted element.
# - dynalist:out Data: the deleted element.

function dynalist.private:pop