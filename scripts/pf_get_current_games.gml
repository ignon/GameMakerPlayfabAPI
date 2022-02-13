/// pf_get_current_games([Script]onComplete, [Script]onError, [String]region, [String]buildVersion, [String]gameMode, [String]statisticName, [Map]tagFilter,  );


// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Request values
var region = argument2;
var buildVersion = argument3;
var gameMode = argument4;
var statisticName = argument5;
var tagFilter = argument6;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetCurrentGames";


// Headers
var headers = map_create("headers");    
map_set(headers, "Content-Type", "application/json");
map_set(headers, "X-Authentication", obj_playfab.pf_session_ticket);

// Body
var body = map_create("body");
if !is_undefined(region) map_set(body, "Region",region );
map_set(body, "BuildVersion",buildVersion );
map_set(body, "GameMode",gameMode );
map_set(body, "StatisticName", statisticName );
map_set(body, "TagFilter", tagFilter );

//body = body_create();
//body_set("Region",argument0, true);

// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

