/// pf_add_generic_id([Script]onComplete, [Script]onError, [String]serviceName, [String]userId );

//Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var serviceName = argument2;
var userId = argument3;

var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

var method = "POST";
var path = "/AddGenericID";

// Headers
var headers = i_pf_header_create(true,true);

// Generic Id Submap
var genericId = map_create("Generic id");
map_set(genericId, "ServiceName",serviceName);
map_set(genericId, "UserId", userId );
      
// Body
var body = i_pf_body_create(path);
i_pf_body_set("GenericId", genericId, pf_data_type_map, true);
    
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
