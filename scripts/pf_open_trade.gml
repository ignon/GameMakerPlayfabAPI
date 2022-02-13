/// pf_open_trade([Script]onComplete, [Script]onError,  [List]offeredInventoryInstanceIds, [List]requestedCatalogItemIds, [List]AllowedPlayerIds );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var offeredInventoryInstanceIds = argument2;
var requestedCatalogItemIds = argument3;
var allowedPlayerIds = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/OpenTrade";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("OfferedInventoryInstanceIds", offeredInventoryInstanceIds, pf_data_type_list, false );
i_pf_body_set("RequestedCatalogItemIds", requestedCatalogItemIds, pf_data_type_list, false);
i_pf_body_set("AllowedPlayerIds", allowedPlayerIds, pf_data_type_list, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

