# Author: PeerHeer
#
#> Description
# The 'data_at' operation finds the element at an index.
#
#> Arguments
# - dynalist:in List: the list that contains the index.
# - $dynalist.index dynalist.in: the index to look up.
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out Data: the data that was found at the index.

function dynalist.private:data_at