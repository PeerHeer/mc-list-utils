# Author: PeerHeer
#
#> Description
# The 'contains' operation checks if a list contains an element.
#
#> Arguments
# - listutils:in List: the list that may contain the element.
# - listutils:in Data: the data that may occur in the list.
# - [OPTIONAL] $listutils.function listutils.in: the comparison function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - $listutils.result listutils.out: 1 if the element was found, 0 otherwise.

function listutils.private:contains