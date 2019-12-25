# Author: PeerHeer
#
#> Description
# The 'index_of_first' operation finds the first index where an element occurs.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - dynalist:in Data: the element to find the index of.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - $dynalist.result dynalist.out: the index of the data.

function dynalist.private:index_of_first