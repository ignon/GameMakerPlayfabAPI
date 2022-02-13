/// pf_get_character_inventory([Script]onComplete, [Script]onError, [String]characterId, [String]catalogVersion );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arguments
var characterId = argument2;
var catalogVersion = argument3;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/GetCharacterInventory";


// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = i_pf_body_create(path);
i_pf_body_set("CharacterId",characterId, pf_data_type_string, true );
i_pf_body_set("CatalogInventory",catalogInventory, pf_data_type_string, false );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

