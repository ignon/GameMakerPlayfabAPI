/// pf_get_player_segment([Script]onComplete, [Script]onError );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetPlayerSegments";



// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

