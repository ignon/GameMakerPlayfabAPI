/// pf_unlink_android_device_id([Script]onComplete, [Script]onError, [String]androidRequestId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Request values
var androidRequestId = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/UnlinkAndroidDeviceId";


// Headers
var headers = i_pf_header_create(true, true);

// Body
var body = map_create("body");
i_pf_body_set("AndroidDeviceId", androidDeviceId, pf_data_type_string, true );

// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

