/**
 * map_destroy(Map map, String reason = "")
 * Destroys the specified map optionally you can specify
 * a reason (for debugging purposes)
 */

var map = argument[0];
var reason = "";
pf_message("Deleting map: "+map_meta_get_name(map), terminalMessageType.map, false);

if argument_count > 1 then reason = argument[1];

map_meta_delete(map);

if !map_exists(map) return false;
ds_map_destroy(map);



