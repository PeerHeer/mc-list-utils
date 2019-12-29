# Author: PeerHeer
#
#> Description
# The 'insert' operation inserts an element at an index.
#
#> Arguments
# - listutils:in List: the list to insert an element into.
# - listutils:in Data: the element to insert.
# - $listutils.index listutils.in: the index to insert the element at.
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: the list that contains the inserted element.

function listutils.private:insert