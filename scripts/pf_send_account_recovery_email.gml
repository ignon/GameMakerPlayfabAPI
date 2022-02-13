/// pf_send_account_recovery_email([Script]onComplete, [Script]onError, [String]email );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var email = argument2;
var titleId = obj_playfab.pf_title_id;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/SendAccountRecoveryEmail";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("TitleId", obj_playfab.pf_title_id, pf_data_type_string, true);
i_pf_body_set("Email", email, pf_data_type_string, true);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

