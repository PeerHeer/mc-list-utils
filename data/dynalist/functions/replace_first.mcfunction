# Author: PeerHeer
#
#> Description
# The 'replace_first' replaces the first occurrence of an element in a list.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - dynalist:in Data: the element to replace.
# - dynalist:in ReplaceData: the element used to replace.
# - [OPTIONAL] $dynalist.function dynalist.in: the comparison function to use (default: 0).
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: original list without the replaced element.

function dynalist.private:replace_first