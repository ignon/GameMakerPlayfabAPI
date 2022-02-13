/// pf_login_with_email_address([Script]onComplete, [Script]onError, [String]email, [String]password, [List]infoRequestParameters)

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var email = argument2;
var password = argument3;
var infoRequestParameters = argument4;
var titleId = obj_playfab.pf_title_id;

// Internal Callbacks
var iOnComplete = i_pf_login_with_email_address_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/LoginWithEmailAddress";

// Headers
var headers = i_pf_header_create(true, false);    


// Body
var body = i_pf_body_create("body");
i_pf_body_set("TitleId", titleId, pf_data_type_string, true);
i_pf_body_set("Email", email, pf_data_type_string, true);
i_pf_body_set("Password", password, pf_data_type_string, true);
i_pf_body_set("InfoRequestParameters", infoRequestParameters, pf_data_type_map, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

