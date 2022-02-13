///pf_get_player_statistics([Script]onComplete, [Script]onError, [List]statisticNames, [List]statisticNameVersions );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var statisticNames = argument2;
var statisticNameVersions = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetPlayerStatistics";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("Statistics",statisticNames, pf_data_type_list, false );
i_pf_body_set("StatisticNameVersions", statisticNameVersions, pf_data_type_list, false)

// Requests
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


