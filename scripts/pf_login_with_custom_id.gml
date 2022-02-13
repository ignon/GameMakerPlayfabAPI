/// pf_login_with_custom_id([Script]onComplete, [Script]onError, [String]customId,[Bool]createAccount)

// Arguments
var onComplete = argument0;
var onError = argument1;
var customId = argument2;
var createAccount = argument3;
var infoRequestParameters = argument4;

// Internal Callbacks
var iOnComplete = i_pf_login_with_custom_id_complete;
var iOnError = i_pf_login_with_custom_id_error;

// Method
var method = "POST";

// Headers
var headers = i_pf_header_create(true, false);

// Path
var path = "/LoginWithCustomId";

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CustomId", customId, pf_data_type_string, false);
i_pf_body_set("CreateAccount", createAccount, pf_data_type_bool, false);
i_pf_body_set("TitleId", obj_playfab.pf_title_id, pf_data_type_string, true);
i_pf_body_set("InfoRequestParameters", infoRequestParameters, pf_data_type_map, false);



i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

