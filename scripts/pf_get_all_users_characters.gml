/// pf_get_all_users_characters([Script]onComplete, [Script]onError, [String]playFabId );

var onComplete = argument0;
var onError = argument1;
var playFabId = argument2;

var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

var method = "POST";

var path = "/GetAllUsersCharacters";


// Headers
var headers = map_create("headers");    
map_set(headers, "Content-Type", "application/json");
map_set(headers, "X-Authentication", obj_playfab.pf_session_ticket);

// Body
var body = map_create("body");
map_set(body, "PlayFabId", playFabId);


i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

