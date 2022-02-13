/**
 * map_get(Map map, String key) Any
 * returns the valie of a map with the given key
 */

var map = argument0;
var key = argument1;

// Ensure the map exists

if ( !map_exists(map) or !ds_map_exists(map,key) ) return undefined;

// Return the value for the specified key
return ds_map_find_value(map,key);
