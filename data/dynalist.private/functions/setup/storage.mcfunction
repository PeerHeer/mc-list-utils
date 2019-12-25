# Author: PeerHeer
#
# Initialize storage.

data merge storage dynalist:in {List: [], Data: {}}
data merge storage dynalist:out {List: [], Data: {}}

data merge storage dynalist.private:types {Root: {List: [[]]}}

data merge storage dynalist.private:compare {Root: {DataL: {}, DataR: {}}}

data merge storage dynalist.private:iterator {Root: {Iterable: []}}