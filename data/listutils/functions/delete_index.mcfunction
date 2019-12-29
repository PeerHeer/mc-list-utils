# Author: PeerHeer
#
#> Description
# The 'delete_index' deletes the element at an index.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - $listutils.index listutils.in: the index to delete.
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: original list without the deleted element.

function listutils.private:delete_index