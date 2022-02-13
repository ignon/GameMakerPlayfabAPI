/// pf_validate_google_play_purchase([Script]onComplete, [Script]onError, [MAP/JSON]receiptJson, [String]signature, [String]currencyCode, [Int]purchasePrice );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Request Values
var receiptJson = argument2;
if !is_string(receiptJson) receiptJosn = json_encode(receiptJson);
var signature = argument3;
var currencyCode = argument4;
var purchasePrice = argument5;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/ValidateGooglePlayPurchase";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("ReceiptJson",receiptJson,pf_data_type_string, true  );
i_pf_body_set("Signature", signature, pf_data_type_string, true );
i_pf_body_set("CurrencyCode", currencyCode, pf_data_type_string, false );
i_pf_body_set("PurchasePrice", purchasePrice, pf_data_type_int, false );


// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

