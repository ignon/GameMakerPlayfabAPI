/// pf_cancel_trade([Script]onComplete, [Script]onError,  [String]tradeId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var tradeId = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/AcceptTrade";



// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("TradeId", tradeId, pf_data_type_string, true );


// Create a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

