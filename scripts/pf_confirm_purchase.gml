/// pf_confirm_purchase([Script]onComplete, [Script]onError, [String]orderId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Request values
var orderId = argument2;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/ConfirmPurchase";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("OrderId",orderId,pf_data_type_string, true );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

