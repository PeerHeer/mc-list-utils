# Author: PeerHeer
#
#> Description
# The 'unzip2' operation unzips a list of lists into two lists.
#
#> Arguments
# - dynalist:in List: the list to unzip.
#
#> Return values
# - $dynalist.success dynalist.out: 1 for success, 0 otherwise.
# - dynalist:out List: the first unzipped list.
# - dynalist:out ZipList: the second unzipped list.

function dynalist.private:unzip2