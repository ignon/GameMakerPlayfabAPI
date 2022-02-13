/// pf_unlock_container_intance([Script]onComplete, [Script]onError, [String]characterId, [String]containerItemInstanceId, [String]keyItemInstanceId, [String]catalogVersion );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var characterId = argument2;
var containerItemInstanceId = argument3;
var keyItemInstanceId = argument4;
var catalogVersion = argument5;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/UnlockContainerInstance";


// Headers
var headers = i_pf_header_create(true,true);


// Body
var body = i_pf_body_create(path);
i_pf_body_set("ContainerItemInstanceId",containerItemInstanceId, pf_data_type_string, true );
i_pf_body_set("CharacterId",characterId, pf_data_type_string, false );
i_pf_body_set("KeyItemInstanceId",keyItemInstanceId, pf_data_type_string, false );
i_pf_body_set("CatalogVersion",catalogVersion, pf_data_type_string, false );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

