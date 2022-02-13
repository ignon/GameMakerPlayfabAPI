/// pf_validate_ios_receipt([Script]onComplete, [Script]onError, [BASE64 String]receiptData, [String]currencyCode, [Int]purchasePrice );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Request Values
var receiptData = argument2; //This can be encoded to BASE64 using base64_encode();
var currencyCode = argument3;
var purchasePrice = argument4;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/ValidateIOSReceipt";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("ReceiptData",receiptData, pf_data_type_string, true );
i_pf_body_set("CurrencyCode", currencyCode, pf_data_type_string, true );
i_pf_body_set("PurchasePrice", purchasePrice, pf_data_type_int, true );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

