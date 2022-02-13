/// pf_get_leaderboard_for_users_characters([Script]onComplete, [Script]onError, [String]statisticName, [Int]maxResultCount );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var statisticName = argument2;
var maxResultCount = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error;

// Method
var method = "POST";

//Path
var path = "/GetLeaderboardForUserCharacters";

pf_error(pf_authenticated == false, "Player not authenticated yet!",true);

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("MaxResultCount",maxResultCount, pf_data_type_int, false);
i_pf_body_set("StatisticName", statisticName, pf_data_type_string, true );

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
