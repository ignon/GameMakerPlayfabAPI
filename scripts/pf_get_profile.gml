/// pf_get_profile(player_id)

// Headers
var headers = ds_map_create();
    headers[? "Content-Type"] = "application/json";
    headers[? "X-Authentication"] = pf_session_ticket;
    
// Body
var body = ds_map_create();

// Player ID
if (argument_count < 1) {
    body[? "PlayFabId"] = pf_player_id;
} else {
    body[? "PlayFabId"] = argument[0];
}
    
// Convert body to JSON
var json = json_encode(body);
ds_map_destroy(body);

// Request
pf_action = 1;
pf_request = http_request(pf_client + "/GetPlayerProfile","POST",headers,json);

// Clearup
ds_map_destroy(headers);
ds_map_destroy(body);
