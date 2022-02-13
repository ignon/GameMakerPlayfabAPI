/**
 * map_size(Map map) Number
 * Returns the size of the map
 */

var map = argument0;
if !map_exists(map) return 0;
return ds_map_size(map);
