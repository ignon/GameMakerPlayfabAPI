/**
 * map_deep_copy(Map source) Map
 * Performs a deep copy of the given map
 * A deep copy duplicates any maps/lists nested within the given
 * map that would not usually be copied
 */

var map = argument0;
// If the map doesn't exist, we can't do the deep copy

if !map_exists(map) return noone;

// Copy the map by json encoding it then decoding it back again
var mapname = map_meta_get_name(map);
var str = json_encode(map);
var copy = json_decode(str);
if mapname != "" {
    map_meta_set_name(copy,mapname+"-Copy");
}
return copy;
