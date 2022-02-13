/// pf_get_publisher_data([Script]onComplete, [Script]onError, [List]keys );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var keys = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetPublisherData";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("Keys", keys, pf_data_type_list, true );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

