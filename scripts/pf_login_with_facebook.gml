/// pf_login_with_facebook([String]customId,[String]createAccount), [Map]infoRequestParameters );

// Custom Callbacks
var onComplete = argument2;
var onError = argument3;

// Arguments
var accessToken = argument0;
var createAccount = argument1;
var infoRequestParameters = argument2;

// Internal Callbacks
var iOnComplete = cpf_login_with_custom_id_complete;
var iOnError = cpf_login_with_custom_id_error;

// Method
var method = "POST";

// Path
var path = "/LoginWithFacebook";

// Headers
var headers = i_pf_header_create(true, false);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("AccessToken", accessToken, pf_data_type_string, true);
i_pf_body_set("CreateAccount", createAccount, pf_data_type_bool, true);
i_pf_body_set("TitleId", obj_playfab.pf_title_id, pf_data_type_string, true);
i_pf_body_set("InfoRequestParameters", infoRequestParameters, pf_data_type_map, false);

// Request    
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
