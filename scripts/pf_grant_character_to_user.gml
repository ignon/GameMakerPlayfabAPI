/// pf_grant_character_to_user([Script]onComplete, [Script]onError, [String]catalogVersion, [String]itemId, [String]characterName );

// Arguments
var onComplete = argument0;
var onError = argument1;
var catalogVersion = argument2;
var itemId = argument3;
var characterName = argument4;

var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

var method = "POST";

var path = "/GrantCharacterToUser";


// Headers
var headers = map_create("headers");    
map_set(headers, "Content-Type", "application/json");
map_set(headers, "X-Authentication", obj_playfab.pf_session_ticket);

// Body
var body = map_create("body");
if !is_undefined(catalogVersion) map_set(body, "CatalogVersion", catalogVersion);
map_set(body, "ItemId", itemId);
map_set(body, "CharacterName", characterName );


i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

