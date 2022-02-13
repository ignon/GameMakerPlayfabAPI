/// pf_get_character_leaderboard([Script]onComplete, [Script]onError, [String]characterType, [String]statisticName, [Int]startPosition, [Int]maxResultCount );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var characterName = argument3;
var statisticName = argument2;
var startPosition = argument3;
var maxResultCount = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error;

// Method
var method = "POST";

//Path
var path = "/GetCharacterLeaderboard";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);


// Headers
var headers = i_pf_header_create(true,true);


// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterType", characterType, pf_data_type_string, false );
i_pf_body_set("MaxResultCount",maxResultCount, pf_data_type_int, false);
i_pf_body_set("StatisticName", statisticName, pf_data_type_string, true);
i_pf_body_set("StartPosition",startPosition, pf_data_type_int, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
