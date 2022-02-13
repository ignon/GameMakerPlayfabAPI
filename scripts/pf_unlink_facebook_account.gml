/// pf_unlink_facebook_account([Script]onComplete, [Script]onError);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/UnlinkFacebookAccount";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = map_create("body");

// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

