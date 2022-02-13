///pf_register_playfab_user([Script]onComplete, [Script]onError,[String]username,[String]email, [String]password, [Bool]requireBothUsernameAndEmail, [String]displayName, [String]titleId, [Map]encryptedRequest,  [List]infoRequestParameters);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Internal Callbacks
var iOnComplete = i_pf_register_playfab_user_complete;
var iOnError = i_pf_default_error;

// Arguments
var username = argument2;
var email = argument3;
var password = argument4;
var requireBothUsernameAndEmail = argument5;
var displayName = argument6;
var titleId = argument7;
var encryptedRequest = argument8;
var infoRequestParameters = argument9;

// Method
var method = "POST";

// Path
var path = "/RegisterPlayFabUser";

// Headers
var headers = i_pf_header_create(true, false);

// Internal Callbacks
var iOnError = i_pf_default_error;
var iOnComplete = i_pf_register_playfab_user_complete;
        
// Body
var body = i_pf_body_create(path);
i_pf_body_set("Username", username, pf_data_type_string, false);
i_pf_body_set("Email",email, pf_data_type_string, false);
i_pf_body_set("Password", password, pf_data_type_string, false);
i_pf_body_set("TitleId",obj_playfab.pf_title_id, pf_data_type_string, true);

i_pf_body_set("EncryptedRequest",encryptedRequest, pf_data_type_string,false );
i_pf_body_set("InfoRequestParameters",infoRequestParameters, pf_data_type_map, false);
i_pf_body_set("RequireBothUsernameAndEmail", requireBothUsernameAndEmail, pf_data_type_bool, false);
i_pf_body_set("DisplayName",displayName, pf_data_type_string, false);

i_pf_request(path, method, headers, body,onComplete, onError,i_pf_register_playfab_user_complete, i_pf_default_error);


