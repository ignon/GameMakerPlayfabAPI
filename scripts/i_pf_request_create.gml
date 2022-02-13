/*
Adds all arguments to map so that they can be easily managed.
Returns the map id.
*/

var path = argument0;
var method = argument1;
var headers = argument2;
var body = argument3;

var onComplete = argument4;
var onError = argument5;
var iOnComplete = argument6;
var iOnError = argument7;

var request = map_create("request:"+path);
map_set(request, "Path", path);
map_set(request, "Method", method);
map_set_map(request, "Headers", headers);
map_set_map(request, "Body", body);

map_set(request, "onComplete", onComplete);
map_set(request, "onError", onError);
map_set(request,"iOnComplete",iOnComplete);
map_set(request,"iOnError",iOnError);
map_set(request,"context",id);


return request;



