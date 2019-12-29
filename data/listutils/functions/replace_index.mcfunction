# Author: PeerHeer
#
#> Description
# The 'replace_index' replaces the element at an index.
#
#> Arguments
# - listutils:in List: the list that contains the element.
# - listutils:in ReplaceData: the element used to replace.
# - $listutils.index listutils.in: the index to replace.
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: original list without the replaced element.
# - listutils:out Data: the element that was replaced.

function listutils.private:replace_index