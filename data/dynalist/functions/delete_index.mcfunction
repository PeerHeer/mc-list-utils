# Author: PeerHeer
#
#> Description
# The 'delete_index' deletes the element at an index.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - $dynalist.index dynalist.in: the index to delete.
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: original list without the deleted element.

function dynalist.private:delete_index