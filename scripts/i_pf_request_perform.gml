/*
Send the HTTP request based on the given request map.
Sets pf_service_processing to true.
*/

var req = argument0;

var path = map_get(req, "Path");
var method = map_get(req, "Method");
var headers = map_get(req, "Headers");
var body = map_get(req, "Body");

// Prints a debug message with correct value.

pf_message(
    "Path: "+path+
    "#Method: "+method+
    "#Headers: "+json_encode(headers)+
    "#Body:#"+json_beautify(json_encode(body)),
    terminalMessageType.request,
    false
);

/*
pf_message(
    json_beautify(json_encode(req)),
    terminalMessageType.request,
    false
);*/

// Performs the HTTP request.
var requestId = http_request(obj_playfab.pf_client + path, method, headers, json_encode(body) );

// Adds requestId to pf_service_request list so that when we get the HTTP answer we have access to reqest data (especially to custom and internal callbacks).
map_set( obj_playfab.pf_service_requests, requestId, req);

// Sets service_processing to true so that we know not to send new HTTP request while the current one is processing.
obj_playfab.pf_service_processing = true;


/*
var req = argument0;

var reqCopy = map_deep_copy(req); 
map_delete(reqCopy, "onComplete")
map_delete(reqCopy, "onError");
map_delete(reqCopy, "iOnComplete");
map_delete(reqCopy, "iOnError");

var path = map_get(reqCopy, "Path");
var method = map_get(reqCopy, "Method");
var headers = map_get(reqCopy, "Headers");
var body = map_get(reqCopy, "Body");


pf_message(
    "| REQUEST PERFORM:"+
    "| PATH:"+path+
    "| METHOD:"+method+
    "| HEADERS:"+json_encode(headers)+
    "| BODY:"+json_encode(body)
);

var requestId = http_request(obj_playfab.pf_client + path, method, headers, json_encode(body) );

map_set(pf_service_requests, requestId, req);
obj_playfab.pf_service_processing = true;
map_destroy(reqCopy);

