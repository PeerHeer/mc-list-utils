# Author: PeerHeer
#
# Check the types of the input list and input data.

function dynalist.private:error_handler/data_type_matches_list_type
execute if score $dynalist.error.success dynalist.var matches 1 run function dynalist.private:error_handler/input_is_list