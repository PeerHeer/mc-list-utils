# Author: PeerHeer
#
#> Description
# The 'replace_first' replaces the first occurrence of an element in a list.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - listutils:in Data: the element to replace.
# - listutils:in ReplaceData: the element used to replace.
# - [OPTIONAL] $listutils.function listutils.in: the comparison function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: original list without the replaced element.

function listutils.private:replace_first