/// pf_restore_ios_purchases([Script]onComplete, [Script]onError, [String]receiptData );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Request values
var receiptData = base64_encode(argument2);

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/RestoreIOSPurchases";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("ReceiptData",receiptData,pf_data_type_string, true );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

