var requestInfo = argument0; //Request info (saved before sending)
var response = argument1;   //Map sent from playfab
var httpStatus = argument2; //Http status

var data = map_get(response, "data");

// HTTP info
var code = map_get(response, "code");
var status = map_get(response, "status");


// Login data
var sessionTicket = map_get(data, "SessionTicket");
var playFabId = map_get(data, "PlayFabId");
var newlyCreated = map_get(data, "NewlyCreated");
var lastLoginTime = map_get(data, "LastLoginTime" ); //Doesn't always exist

// Does not always exist:

var settingsForUser = map_get(data, "SettingsForUser");
if map_exists(settingsForUser) {
    var needsAttribution= map_get(settingsForUser, "NeedsAttribution");
}

obj_playfab.pf_player_id = playFabId;
obj_playfab.pf_session_ticket = sessionTicket;
obj_playfab.pf_authenticated = true;

// Functions
var onComplete = map_get(requestInfo,"onComplete");
var context = map_get(requestInfo,"context");
i_pf_callback(context,onComplete,ds_map_deep_copy(data));

map_destroy(requestInfo);
map_destroy(response);
