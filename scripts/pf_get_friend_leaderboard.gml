/// pf_get_friend_leaderboard([Script]onComplete, [Script]onError, [String]statisticName, [Integer]startPosition, [Integer]maxResultCount, [Bool]includeSteamFriends, [Bool]includeFacebookFriends, [Int]version, [Map]profileConstraints);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var statisticName = argument2;
var startPosition = argument3;
var maxResultCount = argument4;
var includeSteamFriends = argument5;
var includeFacebookFriends = argument6;
var version = argument7;
var profileConstraints = argument8;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/GetFriendLeaderboard";


if pf_error(pf_authenticated == false, "Player not authenticated yet!",0) return false;


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("StatisticName", statisticName, pf_data_type_string, true);
i_pf_body_set("StartPosition",startPosition, pf_data_type_int, true);
i_pf_body_set("MaxResultCount",maxResultCount, pf_data_type_int, false);
i_pf_body_set("Version",version, pf_data_type_int, false);

i_pf_body_set("IncludeSteamFriends", includeSteamFriends, pf_data_type_bool, false);
i_pf_body_set("IncludeFacebookFriends", includeFacebookFriends, pf_data_type_bool, false);
i_pf_body_set("ProfileConstraints",profileConstraints, pf_data_type_map, false);

i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
