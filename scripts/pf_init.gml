/// pf_init(title_id)


if !instance_exists(obj_playfab) {
    instance_create(0,0, obj_playfab);
    
    map_meta_init();
    list_meta_init();
}

with(obj_playfab) {

    // Init
    pf_service_requests   = map_create("serviceRequests");
    pf_service_queue      = ds_list_create(); //Todo
    pf_service_processing = false;
    
    pf_title_id = argument0; // Unique Game ID
    pf_authenticated = false; 
    pf_player_id = ""; // The player's PlayFab ID
    pf_session_ticket = ""; // The session token for user
    
    // Base endpoints
    pf_client =     "https://"+obj_playfab.pf_title_id+".playfabapi.com/Client";
    
    initialized = true;
    
}
