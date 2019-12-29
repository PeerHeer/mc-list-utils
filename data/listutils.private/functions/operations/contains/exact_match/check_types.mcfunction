# Author: PeerHeer
#
# Check the types of the input list and input data.

function listutils.private:error_handler/data_type_matches_list_type
execute if score $listutils.error.success listutils.var matches 1 run function listutils.private:error_handler/input_is_list