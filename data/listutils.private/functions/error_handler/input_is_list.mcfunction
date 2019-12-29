# Author: PeerHeer
#
# Check if the input List is an actual list.

# Sets $listutils.error.success to 0 if an error occured.
execute store success score $listutils.error.success listutils.var run data modify storage listutils.private:types Root.List append from storage listutils:in List