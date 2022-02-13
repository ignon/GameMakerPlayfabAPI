/// pf_get_user_publisher_data([Script]onComplete, [Script]onError, [List]keys, [String]playFabId, [Int]ifChangedFromDataVersion);


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var keys = argument2;
var playFabId = argument3;
var ifChangedFromDataVersion = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/GetUserPublisherReadOnlyData";


pf_error(pf_authenticated == false, "Player not authenticated yet!",true);


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("PlayFabId", playFabId, pf_data_type_string, false);
i_pf_body_set("IfChangedFromDataVersion", ifChangedFromDataVersion, pf_data_type_int, false);
i_pf_body_set("Keys", keys, pf_data_type_list, false);

// Requests
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
