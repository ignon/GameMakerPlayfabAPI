/// pf_get_user_data([Script]onComplete, [Script]onError, [List]keys, [String]userId, [Int]ifChangedFromDataVersion);


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var keys = argument2;
var userId = argument3;
var ifChangedFromDataVersion = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; //i_pf_get_user_data_complete;
var iOnError = i_pf_default_error; //i_pf_get_user_data_error;

// Method
var method = "POST";

// Path
var path = "/GetUserData";


if pf_error(pf_authenticated == false, "Player not authenticated yet!",0) return false;


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("PlayFabId", user_id, pf_data_type_string, false);
i_pf_body_set("IfChangedFromDataVersion", ifChangedFromDataVersion,pf_data_type_int, false);
i_pf_body_set("Keys", keys, pf_data_type_list, false );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
