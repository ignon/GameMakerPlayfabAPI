/**
 * map_set_list(Map map, String key, List list)
 * Sets the key to a list in the given map
 */

var map = argument0;
var key = argument1;
var val = argument2;
// Ensure the map exists

if !map_exists(map) return false;

// If the key already exists delete it
if ds_map_exists(map,key) then ds_map_delete(map,key);
// Add the new list
ds_map_add_list(map,key,val);
