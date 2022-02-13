/// pf_pay_for_purchase([Script]onComplete, [Script]onError, [String]orderId, [String]providerName, [String]currency, [String]ProviderTransactionId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var orderId = argument2;
var providerName = argument3;
var currency = argument4;
var providerTransactionId = argument5;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/PayForPurchase";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("OrderId",orderId, pf_data_type_string, true );
i_pf_body_set("ProviderName",providerName, pf_data_type_string, true );
i_pf_body_set("Currency",currency, pf_data_type_string, true );
i_pf_body_set("ProviderTransactionId",providerTransactionId, pf_data_type_string, false );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

