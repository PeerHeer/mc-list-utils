# Author: PeerHeer
#
# Initialize storage.

data merge storage listutils:in {List: [], Data: {}}
data merge storage listutils:out {List: [], Data: {}}

data remove storage listutils.private:types Root
data merge storage listutils.private:types {Root: {List: [[]]}}

data remove storage listutils.private:compare Root
data merge storage listutils.private:compare {Root: {DataL: {}, DataR: {}}}

data remove storage listutils.private:iterator Root
data merge storage listutils.private:iterator {Root: {Iterable: []}}