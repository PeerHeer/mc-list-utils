# Author: PeerHeer
#
#> Description
# The 'replace_index' replaces the element at an index.
#
#> Arguments
# - dynalist:in List: the list that contains the element.
# - dynalist:in ReplaceData: the element used to replace.
# - $dynalist.index dynalist.in: the index to replace.
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: original list without the replaced element.
# - dynalist:out Data: the element that was replaced.

function dynalist.private:replace_index