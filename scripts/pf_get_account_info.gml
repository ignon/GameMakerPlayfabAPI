/// pf_get_account_info([Script]onComplete, [Script]onError, [String]PlayFabId, [String]Username, [String]Email, [String]TitleDisplayName);


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var playFabId = argument2;
var username = argument3;

// Arguments
var email = argument4;
var titleDisplayName = argument5;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/GetAccountInfo";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("PlayFabId", playFabId, pf_data_type_string, false);
i_pf_body_set("Username", username, pf_data_type_string, false);
i_pf_body_set("Email", email, pf_data_string, false);
i_pf_body_set("TitleDisplayName",titleDisplayName, pf_data_type_string, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
