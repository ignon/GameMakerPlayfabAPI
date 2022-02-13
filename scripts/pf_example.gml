/// pf_([Script]onComplete, [Script]onError );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;
// Request values
var example = argument2;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/";



// Headers
var headers = map_create("headers");    
map_set(headers, "Content-Type", "application/json");
map_set(headers, "X-Authentication", obj_playfab.pf_session_ticket);

// Body
var body = map_create("body");
/*map_set(body, "", );
map_set(body, "", );
map_set(body, "", );
map_set(body, "", );
map_set(body, "", );
map_set(body, "", );
*/

// Creates a request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

