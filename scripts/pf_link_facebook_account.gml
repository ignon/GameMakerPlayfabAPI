/// pf_link_facebook_account([Script]onComplete, [Script]onError, [String]accessToken, [Bool]forceLink);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var accessToken = argument2;
var forceLink = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/LinkFacebookAccount";

// Headers
var headers = i_pf_header_create(true, true);
      
// Body
var body = i_pf_body_create(path);
i_pf_body_set("AccessToken", accessToken, pf_data_type_string, true);
i_pf_body_set("ForceLink", forceLink, pf_data_type_bool, false);
    
// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
