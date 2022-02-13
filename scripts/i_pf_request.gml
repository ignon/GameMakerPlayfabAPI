/// i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

/*
Creates a request map (calls i_pf_request_create).
Then either performs the http request (calls i_pf_request_create) if there are no other HTTP requests being processed
or adds it to service queue (pf_service_queue) to wait for appropriate moment to send the http request.
*/


// Arguments
var path = argument0;
var method = argument1;
var headers = argument2;
var body = argument3;

var onComplete = argument4;
var onError = argument5;
var iOnComplete = argument6;
var iOnError = argument7;


// Creates a map including all needed data for HTTP request.
var req = i_pf_request_create(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);



// If the service queue is empty and no other HTTP requests are being processed performs the HTTP request.
if ds_list_empty(obj_playfab.pf_service_queue) and not obj_playfab.pf_service_processing {
    i_pf_request_perform(req);
}
else { // Or adds the request map to service queue to wait for right time to send it.
    pf_message("Request added to queue: "+"METHOD: "+ method + " PATH: " +path, terminalMessageType.systemMessage, false);
    ds_list_add(obj_playfab.pf_service_queue,req);
}


