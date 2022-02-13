/// pf_get_title_news([Script]onComplete, [Script]onError,[Int]Count)

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
var count = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Headers
var headers = i_pf_header_create(true,true);

// Path
var path = "/GetTitleNews";


// Body
var body = i_pf_body_create(path);
i_pf_body_set("Count", count, pf_data_type_int, false);


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

