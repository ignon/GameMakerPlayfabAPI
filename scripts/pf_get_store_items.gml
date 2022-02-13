/// pf_get_store_items([Script]onComplete, [Script]onError, [String]catalogVersion, [String]storeId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var catalogVersion = argument2;
var storeId = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetStoreItems";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CatalogVersion", catalogVersion, pf_data_type_string, false );
i_pf_body_set("StoreId", storeId, pf_data_type_string, true );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

