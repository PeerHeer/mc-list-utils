# Author: PeerHeer
#
#> Description
# The 'index_of' operation finds the last index where an element occurs.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - $dynalist.index dynalist.in: the element to find the index of.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out Data: the data that was found at the index.

function dynalist.private:index_of