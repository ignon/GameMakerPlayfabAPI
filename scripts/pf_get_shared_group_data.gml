/// pf_get_shared_group_data([Script]onComplete, [Script]onError, [String]sharedGroupId, [List]keys, [Bool]getMembers );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var sharedGroupId = argument2;
var keys = argument3;
var getMembers = argument4;


// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetSharedGroupData";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("SharedGroupId",sharedGroupData, pf_data_type_string, false );
i_pf_body_set("Keys",keys, pf_data_type_list, false);
i_pf_body_set("GetMembers", getMembers, pf_data_bool, false );

// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

