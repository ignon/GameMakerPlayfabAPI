/// pf_validate_amazon_iap_receipt([Script]onComplete, [Script]onError, [Strign]receiptId, [String]itemId, [String]currencyCode, [Int]purchasePrice );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Request Values
var receiptiId = argument2;
var userId = argument3;
var catalogVersion = argument4;
var currencyCode = argument5;
var purchasePrice = argument6;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/ValidateAmazonIAPReceipt";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("ReceiptId",receiptId, pf_data_type_string, true );
i_pf_body_set("UserId", userId, pf_data_type_string, true );
i_pf_body_set("CurrencyCode", currencyCode, pf_data_type_string, false );
i_pf_body_set("PurchasePrice", purchasePrice, pf_data_type_int, false );
i_pf_body_set("CatalogVersion", catalogVersion, pf_data_type_string, false );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

