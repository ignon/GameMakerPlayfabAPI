/// pf_get_player_combined_info([Script]onComplete, [Script]onError, [String]PlayFabId, [Map]InfoRequestParameters);


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var playFabId = argument2;
var infoRequestParameters = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/GetPlayerCombinedInfo";
if pf_error(pf_authenticated == false, "Player not authenticated yet!",0) return false;

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("PlayFabId", playFabId, pf_data_type_string, false);
i_pf_body_set("InfoRequestParameters", infoRequestParameters, pf_data_type_map, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
