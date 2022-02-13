/// pf_get_time([Script]onComplete, [Script]onError)

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Path
var path = "/GetTime";

// Method
var method = "POST";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

