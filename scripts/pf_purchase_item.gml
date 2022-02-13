/// pf_purchase_item([Script]onComplete, [Script]onError, [String]itemId, [String]virtualCurrency, [Int]price, [String]catalogVersion, [String]storeId, [String]characterId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var itemId = argument2;
var virtualCurrency = argument3;
var price = argument4;
var catalogVersion = argument5;
var storeId = argument6;
var characterId = argument7;
var characterId = argument2;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/PurchaseItem";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("ItemId", itemId, pf_data_type_string, true);
i_pf_body_set("VirtualCurrency", virtualCurrency, pf_data_type_string, true);
i_pf_body_set("Price", price, pf_data_type_int, true);
i_pf_body_set("CatalogVersion", catalogVersion, pf_data_type_string, false);
i_pf_body_set("StoreId",storeId, pf_data_string, false);
i_pf_body_set("CharacterId",characterId, pf_data_string, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

