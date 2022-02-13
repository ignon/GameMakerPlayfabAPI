/// pf_get_player_profile([Script]onComplete, [Script]onError, [String]PlayFabId, [List]ProfileConstraints);


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var playFabId = argument2;
var profileConstraints = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/GetPlayerProfile";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);


// Headers
var headers = i_pf_header_create(true,true);

var body = i_pf_body_create(path);
i_pf_body_set("PlayFabId", playFabId, pf_data_type_string, true);
i_pf_body_set("ProfileConstraints", profileConstraints, pf_data_type_map, false);


i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
