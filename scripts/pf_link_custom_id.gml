/// pf_link_custom_id([Script]onComplete, [Script]onError, [String]customId, [Bool]forceLink);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
var customId = argument2;
var forceLink = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/LinkCustomID";

// Headers
var headers = i_pf_header_create(true, true);
      
// Body
var body = i_pf_body_create(path);
i_pf_body_set("CustomID", customId, pf_data_type_string, true );
i_pf_body_set("ForceLink", forceLink, pf_data_type_bool, false);
    
// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
