# Author: PeerHeer
#
# Initialize storage.

data merge storage listutils:in {List: [], Data: {}}
data merge storage listutils:out {List: [], Data: {}}

data merge storage listutils.private:types {Root: {List: [[]]}}

data merge storage listutils.private:compare {Root: {DataL: {}, DataR: {}}}

data merge storage listutils.private:iterator {Root: {Iterable: []}}