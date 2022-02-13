/// i_pf_body_create(path);


//Creates a new request body and returns its id

var path = argument[0];

if !is_undefined(path) var str = "Body: "+path;
else var str = "Body";

var body = map_create("body");

obj_playfab.pf_body_id = body;
return body;
