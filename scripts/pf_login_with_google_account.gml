/// pf_login_with_google_account();

var server_auth_code = argument0;
var create_account = argument1;
var onComplete = argument2;
var onError = argument3;

var iOnComplete = i_pf_login_with_google_account_complete;
var iOnError = i_pf_login_with_google_account_error;

var method = "POST";
var path = "/LoginWithGoogleAccount";
pf_message(path);

// Headers
var headers = map_create("headers");
map_set(headers, "Content-Type", "application/json");


// Body
var body = ds_map_create();
map_set(body, "ServerAuthCode", server_auth_code);
map_set(body, "CreateAccount", create_account);
map_set(body, "TitleId", pf_title_id );

i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
