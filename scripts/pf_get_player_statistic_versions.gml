/// pf_get_player_statistic_versions([Script]onComplete, [Script]onError, [String]statisticName );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var statisticName = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetPlayerStatisticVersions";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("StatisticName", statisticName,pf_data_type_string, true  );

i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);


