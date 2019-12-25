# Author: PeerHeer
#
# Check if the input List is an actual list.

# Sets $dynalist.error.success to 0 if an error occured.
execute store success score $dynalist.error.success dynalist.var run data modify storage dynalist.private:types Root.List append from storage dynalist:in List