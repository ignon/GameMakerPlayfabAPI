/// pf_start_purchase([Script]onComplete, [Script]onError, [String]catalogVersion, [String]storeId, [List]items );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var catalogVersion = argument2;
var storeId = argument3;
var items = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/StartPurchase";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CatalogVersion",catalogVersion, pf_data_type_string, false );
i_pf_body_set("StoreId", storeId, pf_data_type_string, false );
i_pf_body_set("Items",items, pf_data_type_list, true );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

