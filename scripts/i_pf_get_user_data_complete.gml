var requestInfo = argument0; //Request info (saved before sending)
var response = argument1;   //Map sent from playfab
var httpStatus = argument2; //Http status

show_message("iGetUserData:#"+json_encode(response));

var data = map_get(response, "data");

// HTTP info
var code = map_get(response, "code");
var status = map_get(response, "status");


// Functions
var onComplete = map_get(requestInfo,"onComplete");
var context = map_get(requestInfo,"context");
i_pf_callback(context,onComplete,ds_map_deep_copy(data));

map_destroy(requestInfo);
map_destroy(response);
