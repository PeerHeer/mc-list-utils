# Author: PeerHeer
#
#> Description
# The 'delete_all' deletes all occurrences of an element in a list.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - listutils:in Data: the element to delete.
# - [OPTIONAL] $listutils.function listutils.in: the comparison function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: original list without the deleted element(s).

function listutils.private:delete_all
