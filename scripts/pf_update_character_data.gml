///pf_update_character_data([Script]onComplete, [Script]onError,[String]characterId [Map]data,[List]keysToRemove, [String]permission);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Requests
var characterId = argument2;
var data = argument3;
var keysToRemove = argument4;
var permission = argument5;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/UpdateCharacterData";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterId", characterId,pf_data_type_string, true);
i_pf_body_set("Data", data, pf_data_type_map, false);
i_pf_body_set("KeysToRemove", keysToRemove, pf_data_type_list, false);
i_pf_body_set("Permission", permission, pf_data_type_string, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


