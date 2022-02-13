/// pf_write_player_event([Script]onComplete, [Script]onError, [String]eventName, [Datetime]timestamp, [Map]body );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var eventName = argument2;
var timestamp = argument3;

if (!is_string(timestamp)) timestamp = pf_gamemaker_date_to_playfab(timestamp);
var s_body = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete; 
var iOnError = i_pf_default_error; 

// Method
var method = "POST";

// Path
var path = "/WritePlayerEvent";



// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("EventName", eventName,pf_data_type_string, true );
i_pf_body_set("Timestamp", timestamp, pf_data_type_string, false);
i_pf_body_set("Body", s_body, pf_data_type_map, false);

// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);
