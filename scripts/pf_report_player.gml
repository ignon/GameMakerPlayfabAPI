/// pf_report_player([Script]onComplete, [Script]onError, [String]reporteeId, [String]comment );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;


// Arguments
var reporteeId = argument2;
var comment = argument3;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;


// Method
var method = "POST";


// Path
var path = "/ReportPlayer";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);map_set(body, "ReporteeId", reporteeId);
i_pf_body_set("Comment", comment, pf_data_type_string, false);
i_pf_body_set("ReporteeId", reporteeId, pf_data_type_string, true);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

