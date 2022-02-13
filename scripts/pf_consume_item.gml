/// pf_consume_item([Script]onComplete, [Script]onError, [String]itemInstanceId, [Int]consumeCount, [String]characterId );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var itemInstanceId = argument2;
var consumeCount = argument3;
var characterId = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/ConsumeItem";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("ItemInstanceId", itemInstanceId, pf_data_type_string, true );
i_pf_body_set("ConsumeCount", consumeCount, pf_data_type_int, true );
i_pf_body_set("characterId",characterId, pf_data_type_string, false);


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

