/// pf_execute_cloud_script([Script]onComplete, [Script]onError, [String]functionName, [Map]functionParameter, [String]revisionSelection, [Int]specificRevision, [Bool]generatePlayStreamEvent );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var functionName = argument2;
var functionParameter = argument3;
var revisionSelection = argument4;
var specificRevision = argument5;
var generatePlayStreamEvent = argument6;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/ExecuteCloudScript";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("FunctionName",functionName, pf_data_type_string, true );
i_pf_body_set("FunctionParameter",functionParameter, pf_data_type_map, false );
i_pf_body_set("RevisionSelection", revisionSelection, pf_data_type_string, false );
i_pf_body_set("SpecificRevision",specificRevision, pf_data_type_int, false );
i_pf_body_set("GeneratePlayStreamEvent", generatePlayStreamEvent, pf_data_type_bool, false);


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

