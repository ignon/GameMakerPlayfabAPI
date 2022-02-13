var map = argument0;

if !map_exists(map) return undefined;

var str = json_encode(map);
var copy = json_decode(str);

return copy;
