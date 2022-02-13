/// pf_get_player_tags([Script]onComplete, [Script]onError, [String]playFabId, [String]namespace );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Request Values
var playFabId = argument2;
var namespace = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetPlayerTags";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("PlayFabId", playFabId, pf_data_type_string, true );
i_pf_body_set("Namespace", namespace, pf_data_type_string, false );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

