/// pf_login_with_custom_id

var s_device_id      = argument0;
var s_create_account = argument1;

var path_type = "LoginWithAndroidDeviceID";

// Headers
var headers = ds_map_create();
    headers[? "Content-Type"] = "application/json";
    
// Body
var body = ds_map_create();
    body[? "AndroidDeviceId"]   = s_device_id;
    body[? "OS"]                = string(os_version);
    body[? "AndroidDevice"]     = i_pf_get_device();
    body[? "CreateAccount"]     = s_create_account;
    body[? "TitleId"]           = pf_title_id;
    //body[? "EncypredRequest"]   = "";
    //body[? "PlayerSecret"] = "";


var json = json_encode(body);

pf_action = 0;
pf_request = http_request(pf_client + path_type, "POST", headers, json);

// Clearup
ds_map_destroy(body);
ds_map_destroy(headers);


