/// pf_get_friend_list([Script]onComplete, [Script]onError, [Bool]includeSteamFriends, [Bool]includeFacebookFriends, [List]profileConstraints );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var includeSteamFriends = argument2;
var includeFacebookFriends = argument3;
var profileConstraints = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/GetFriendsList";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("IncludeSteamFriends", includeSteamFriends, pf_data_type_bool, false);
i_pf_body_set("IncludeFacebookFriends", includeFacebookFriends, pf_data_type_bool, false);
i_pf_body_set("ProfileConstraints", profileConstraints, pf_data_type_map, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
