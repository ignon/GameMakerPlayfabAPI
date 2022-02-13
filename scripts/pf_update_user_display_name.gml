/// pf_update_user_display_name(displayName)

var onComplete = argument0;
var onError = argument1;
var displayName = argument2;

var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

var method = "POST";

// Headers
var headers = map_create("headers");    
map_set(headers, "Content-Type", "application/json");
map_set(headers, "X-Authentication", pf_session_ticket)

// Body
var body = map_create("body");
map_set(body, "DisplayName", displayName);
    
var path = "/LoginWithCustomID"
pf_message(path);

i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

