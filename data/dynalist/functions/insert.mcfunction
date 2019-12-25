# Author: PeerHeer
#
#> Description
# The 'insert' operation inserts an element at an index.
#
#> Arguments
# - dynalist:in List: the list to insert an element into.
# - dynalist:in Data: the element to insert.
# - $dynalist.index dynalist.in: the index to insert the element at.
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: the list that contains the inserted element.

function dynalist.private:insert