///pf_update_character_statistics([Script]onComplete, [Script]onError, [String]characterId, [Map/JSON]characterStatistics);

/*
Statistics should have a submap for every statistic (assigned with map_set_map) 
including name, version and value (or it should be already formatted json string)
*/

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var characterId = argument2;
var characterStatistics = argument3; //Body of the http request

if is_string(characterStatistics) {
    characterStatistics = json_decode(characterStatistics);
}

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/UpdateCharacterStatistics";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterId", characterId, pf_data_type_string, true);
i_pf_body_set("CharacterStatistics", characterStatistics, pf_data_type_map, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


