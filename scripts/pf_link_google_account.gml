/// pf_link_google_account([Script]onComplete, [Script]onError, [String]serverAuthCode, [Bool]forceLink);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var serverAuthCode = argument2;
var forceLink = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/LinkGoogleAccount";

// Headers
var headers = i_pf_header_create(true,true);  
      
// Body
var body = ds_map_create();
i_pf_body_set("ServerAuthCode", serverAuthCode, pf_data_type_string, true);
i_pf_body_set("ForceLink", forceLink, pf_data_type_bool, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
