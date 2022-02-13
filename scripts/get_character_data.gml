///get_character_data([Script]onComplete, [Script]onError, [String]playFabId, [String]characterId, [List]keys, [Int]ifChangedFromDataVersion);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var playfabId = argument2;
var characterId = argument3;
var keys = argument4;
var ifChangedFromDataVersion = argument5;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetCharacterData";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterId", characterId, pf_data_type_string, true);
i_pf_body_set("playFabId", playFabId, pf_data_type_string, false );
i_pf_body_set("Keys", keys, pf_data_type_list, false);
i_pf_body_set("IfChangedFromDataVersion", ifChangedFromDataVersion, pf_data_type_int, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


