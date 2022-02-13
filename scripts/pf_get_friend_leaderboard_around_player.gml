/// pf_get_friend_leaderboard_around_player([Script]onComplete, [Script]onError, [String]playFabId, [String]statisticName, [Int]startPosition, [Int]maxResultCount, [Bool]includeSteamFriends, [Bool]includeFacebookFriends, [Int]version, [Map]profileConstraints);

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var playFabId = argument2;
var statisticName = argument3;
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
var path = "/GetFriendLeaderboardAroundPlayer";


if pf_error(pf_authenticated == false, "Player not authenticated yet!",0) return false;


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("StatisticName", statisticName, pf_data_type_string, true);
i_pf_body_set("MaxResultCount",maxResultCount, pf_data_type_int, false);
i_pf_body_set("PlayFabId",playFabId, pf_data_type_string, false);
i_pf_body_set("Version",version, pf_data_type_int, false);
i_pf_body_set("ProfileConstraints",profileConstraints, pf_data_type_map, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
