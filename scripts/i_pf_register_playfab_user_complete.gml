var requestInfo = argument0; //Request info (saved before sending)
var response = argument1;   //Map sent from playfab
var httpStatus = argument2; //Http status

var data = map_get(response, "data");

// HTTP info
var code = map_get(response, "code");
var status = map_get(response, "status");


// Login data
var sessionTicket = map_default(data, "SessionTicket","");
var playFabId = map_default(data, "PlayFabId","");
var newlyCreated = map_default(data, "NewlyCreated",false);


var obj_playfab.pf_username = map_default(data, "Username","");

var lastLoginTime = map_get(data, "LastLoginTime" ); //Doesn't always exist

// Does not always exist:
var settingsForUser = map_get(data, "SettingsForUser");
var needsAttribution= map_default(settingsForUser, "NeedsAttribution",false);


obj_playfab.pf_player_id = playFabId;
obj_playfab.pf_session_ticket = sessionTicket;
obj_playfab.pf_authenticated = true;

// Functions
var onComplete = map_get(requestInfo,"onComplete");
var context = map_get(requestInfo,"context");
i_pf_callback(context,onComplete,ds_map_deep_copy(data));

map_destroy(requestInfo);
map_destroy(response);
