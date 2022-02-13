///pf_update_player_statistics([Script]onComplete, [Script]onError, [Map/JSON]statistics);

/*
Statistics should have a submap for every statistic (assigned with map_set_map) 
including name, version and value (or it should be already formatted json string)
*/

//Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var statistics = argument2; //Body of the http request

if is_string(statistics) {
    statistics = json_decode(statistics);
}

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/UpdatePlayerStatistics";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = statistics;

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


