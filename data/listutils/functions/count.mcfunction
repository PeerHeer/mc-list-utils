# Author: PeerHeer
#
#> Description
# The 'count' operation checks how many times an element occurs in a list.
#
#> Arguments
# - listutils:in List: the list that may contain the element.
# - listutils:in Data: the data that may occur in the list.
# - [OPTIONAL] $listutils.function listutils.in: the comparison function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - $listutils.result listutils.out: indicates how many elements wer found.

function listutils.private:count