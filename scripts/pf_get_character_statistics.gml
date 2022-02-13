///pf_get_character_statistics([Script]onComplete, [Script]onError, [List]characterId );

/*Leave either statisticNames or statisticNameVersion as undefined.*/

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var characterId = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

//Path
var path = "/GetCharacterStatistics";


// Headers
var headers = i_pf_header_create(true,true);


// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterId",characterId, pf_data_type_list, false );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


