/// pf_get_leaderboard_around_character([Script]onComplete, [Script]onError, [String]statisticName, [String]characterId, [String]characterType, [Int]maxResultCount );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var statisticName = argument2;
var characterId = argument3;
var characterType = argument4;
var maxResultCount = argument5;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error;

// Method
var method = "POST";

//Path
var path = "/GetLeaderboardAroundCharacter";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);

// Headers
var headers = i_pf_header_create(true,true);


// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterType", characterType, pf_data_type_string, false);
i_pf_body_set("MaxResultCount",maxResultCount, pf_data_type_int, false);
i_pf_body_set("CharacterId", characterId, pf_data_type_string, true);
i_pf_body_set("StatisticName", statisticName, pf_data_type_string, true );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
