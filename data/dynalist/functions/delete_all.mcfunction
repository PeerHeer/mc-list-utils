# Author: PeerHeer
#
#> Description
# The 'delete_all' deletes all occurrences of an element in a list.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - dynalist:in Data: the element to delete.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: original list without the deleted element(s).

function dynalist.private:delete_all
