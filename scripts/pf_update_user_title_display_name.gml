/// pf_update_user_title_display_name([Script]onComplete, [Script]onError, [String]displayName );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var displayName = argument2;
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/UpdateUserTitleDisplayName";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("DisplayName", displayName, pf_data_type_string, true);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
