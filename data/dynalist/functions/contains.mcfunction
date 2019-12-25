# Author: PeerHeer
#
#> Description
# The 'contains' operation checks if a list contains an element.
#
#> Arguments
# - dynalist:in List: the list that may contain the element.
# - dynalist:in Data: the data that may occur in the list.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - $dynalist.result dynalist.out: 1 if the element was found, 0 otherwise.

function dynalist.private:contains