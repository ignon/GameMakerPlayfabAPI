/// pf_add_user_virtual_currency([Script]onComplete, [Script]onError, [String]virtualCurrency, [String]amount );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Request values
var virtualCurrency = argument2;
var amount = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/AddUserVirtualCurrency";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("VirtualCurrency",virtualCurrency, pf_data_type_string, true );
i_pf_body_set("Amount", amount, pf_data_type_int, true );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

