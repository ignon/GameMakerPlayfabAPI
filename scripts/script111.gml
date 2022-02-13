/// pf_get_playfab_ids_from_facebook_ids([Script]onComplete, [Script]onError, [List]facebookIds );

var onComplete = argument0;
var onError = argument1;
var facebookIds = argument2;


var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

var method = "POST";

var path = "/GetPlayFabIDsFromFacebookIDs";
pf_message(path);


// Headers
var headers = map_create("headers");    
map_set(headers, "Content-Type", "application/json");
map_set(headers, "X-Authentication", obj_playfab.pf_session_ticket);

// Body
var body = map_create("body");
map_set_list(body, "FacebookIDs", facebookIds);

i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

