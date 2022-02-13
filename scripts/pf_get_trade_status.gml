/// pf_get_trade_status([Script]onComplete, [Script]onError,  [String]offeringPlayerId, [String]tradeId );

// Arguments
var onComplete = argument0;
var onError = argument1;
var offeringPlayerId = argument2;
var tradeId = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetTradeStatus";



// Headers
var headers = i_pf_header_create(true,true);
// Body
var body = i_pf_body_create(path);
i_pf_body_set("TradeId", tradeId, pf_data_type_string, true );
i_pf_body_set("OfferingPlayerId", offeringPlayerId, pf_data_type_string, true );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

