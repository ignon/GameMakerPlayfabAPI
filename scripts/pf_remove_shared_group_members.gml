/// pf_remove_shared_group_members([Script]onComplete, [Script]onError, [String]sharedGroupId, [List]playFabIds );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Request values
var sharedGroupId = argument2;
var playFabIds = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/RemoveSharedGroupMembers";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("SharedGroupId",sharedGroupId, pf_data_type_string, true );
i_pf_body_set("PlayFabIds",playFabIds, pf_data_type_list, true );


// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

