/// pf_remove_friend([Script]onComplete, [Script]onError, [String]friendPlayFabId );


// Custon Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var friendPlayFabId = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/RemoveFriend";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("FriendPlayFabId", friendPlayFabId, pf_data_string, true);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
