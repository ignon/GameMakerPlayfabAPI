/// pf_set_friend_tags([Script]onComplete, [Script]onError, [String]friendPlayFabId, [List]tags );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var friendPlayFabId = argument2;
var tags = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/SetFriendTags";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("FriendPlayFabId", friendPlayFabId,pf_data_type_string, true);
i_pf_body_set("Tags", tags, pf_data_type_list, true );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
