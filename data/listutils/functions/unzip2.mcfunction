# Author: PeerHeer
#
#> Description
# The 'unzip2' operation unzips a list of lists into two lists.
#
#> Arguments
# - listutils:in List: the list to unzip.
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: the first unzipped list.
# - listutils:out ZipList: the second unzipped list.

function listutils.private:unzip2