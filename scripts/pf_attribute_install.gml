/// pf_attribute_install([Script]onComplete, [Script]onError, [String]idfa, [String]adid );


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var idfa = argument2;
var adid = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/AttributeInstall";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("Idfa", idfa, pf_data_type_string, false );
i_pf_body_set("Adid", adid, pf_data_type_string, false );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

