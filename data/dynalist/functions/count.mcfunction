# Author: PeerHeer
#
#> Description
# The 'count' operation checks how many times an element occurs in a list.
#
#> Arguments
# - dynalist:in List: the list that may contain the element.
# - dynalist:in Data: the data that may occur in the list.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - $dynalist.result dynalist.out: indicates how many elements wer found.

function dynalist.private:count