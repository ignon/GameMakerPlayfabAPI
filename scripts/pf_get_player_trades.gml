/// pf_get_player_trades([Script]onComplete, [Script]onError,  [String]StatusFilter );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Arguments
var statusFilter = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetPlayerTrades";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("StatusFilter", statusFilter, pf_data_type_string, false );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

