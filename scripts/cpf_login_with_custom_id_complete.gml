var result = argument0;

if ds_exists(result,ds_type_map) {
    map_destroy(result);
}


//pf_link_custom_id( cpf_default_complete, cpf_default_error, "4321",undefined )

//pf_report_player(cpf_default_complete, cpf_default_error, obj_playfab.pf_player_id, "Jäätävä kusipää" );
//var list = list_create();
//pf_get_playfab_ids_from_facebook_ids( cpf_default_complete, cpf_default_error, list );
/*
pf_get_account_info(cpf_default_complete, cpf_default_error, obj_playfab.pf_player_id, undefined,undefined,undefined );
pf_get_player_profile(cpf_default_complete, cpf_default_error, obj_playfab.pf_player_id, undefined)
*/
//pf_add_generic_id( cpf_default_complete, cpf_default_error, "IgnoNetwork", "666" )
    //pf_get_catalog_items( cpf_default_complete, cpf_default_error, undefined );
//pf_get_time( cpf_get_time_complete, cpf_default_error );
    //pf_write_player_event( cpf_default_complete, cpf_default_error, "TestEvent", undefined, undefined )

//pf_add_username_password(cpf_default_complete, cpf_default_error, "IgnotusMaximus", "ignoto@kastema.to", "Morjes666" )
//pf_update_user_title_display_name(cpf_default_complete, cpf_default_error, "Ignon" );


/*
var items = map_create("items");
map_set(items, "Money", 1234);
pf_update_user_data(cpf_update_user_data_complete, cpf_update_user_data_error, items, undefined, undefined );


var map = list_create("asdf");
var datakeys = list_create("lll");
ds_list_add(datakeys, "Money");
ds_map_add(map, "GetUserData", true)
map_set_list(map,"UserDataKeys", datakeys);
pf_get_player_combined_info(cpf_default_complete, cpf_default_error, obj_playfab.pf_player_id, map);
pf_send_account_recovery_email(cpf_default_complete, cpf_default_error, "amakinen@saunalahti.fi" );

