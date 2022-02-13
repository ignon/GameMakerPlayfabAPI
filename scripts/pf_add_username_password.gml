///pf_add_username_password([Script]onComplete, [Script]onError,[String]username,[String]email, [String]password );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var username = argument2;
var email = argument3;
var password = argument4;

// Method
var method = "POST";

// Path
var path = "/AddUsernamePassword";

// Headers
var headers = i_pf_header_create(true,true);    
var iOnError = i_pf_default_error;
var iOnComplete = i_pf_default_complete;
        
// Body
var body = i_pf_body_create(path);
i_pf_body_set("Username", username, pf_data_type_string, true);
i_pf_body_set("Email",email, pf_data_type_string, true);
i_pf_body_set("Password", password, pf_data_type_string, false);

// Request
i_pf_request(path, method, headers, body,onComplete, onError,i_pf_register_playfab_user_complete, i_pf_default_error);


