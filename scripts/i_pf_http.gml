/*
Receives the HTTP response
Check whether or not the response and request was successfull and based on that
either calls specified error or complete callbacks.
*/

if (initialized == false) exit;

var response = argument0;
var requestId = map_get(response, "id");

// We change the result index to hold an actual map instead of json string. (This is just to make it easier to print)
var result = json_decode(map_get(response,"result"))
map_set_map(response, "result",result)


// Event details
var status = map_get(response, "status");
var httpStatus = map_get(response, "http_status")
var url = map_get(response, "url");
var ID = map_get(response, "id")

var headers = map_get(response, "response_headers");

// We basically just mark the headers index as a map.
if instance_exists(obj_playfab_terminal) and obj_playfab_terminal.showTerminalMessage[terminalMessageType.header] {
    map_set_map(response, "response_headers", headers);
}


// 1. Checks if this is the final response (which it isn't if it doensn't include http_status).
if !map_has(response,"http_status") then exit;

// 2. Checks if the request was intended for PlayFab API.
if !map_has(pf_service_requests, requestId) exit;



//pf_message(json_beautify(json_encode(response)), terminalMessageType.httpCallback, false);

pf_message(
json_beautify(json_encode(response))
, terminalMessageType.httpCallback, false);

/*
pf_message(
"url: " + url
+"#http_status: " + httpStatus
(
"url: " + url
+"#http_status: " + string(httpStatus)
+"#status: " + string(status)
+"#Result:#"+json_beautify(json_encode(result))
)
, terminalMessageType.httpCallback, false);
*/
var error   = map_get(result, "error");
var errorCode = map_get(result, "errorCode");
var errorMessage = map_get(result, "errorMessage");

var errorDetails = map_get(result, "errorDetails");
if !is_undefined(errorDetails) var errorDetails = map_deep_copy(errorDetails);



// Creates an errorData map which includes all error data and which can be accessend from user specified error callback.
var errorData = map_create("errorData");
if !is_undefined(status) map_set(errorData, "status", status);
if !is_undefined(httpStatus) map_set(errorData, "httpStatus", httpStatus);
if !is_undefined(error) map_set(errorData,"error",error);
if !is_undefined(errorCode) map_set(errorData,"errorCode",errorCode);
if !is_undefined(errorMessage) map_set(errorData,"errorMessage",errorMessage);
if !is_undefined(errorDetails) map_set_map(errorData, "errorDetails",errorDetails);


// Basic request info (got from the map which was used for making the http request).
var requestInfo = map_get(pf_service_requests, requestId);
var method      = map_get(requestInfo,"Method");
var path        = map_get(requestInfo,"Path");
var data        = map_get(requestInfo,"Body");
var iOnComplete = map_get(requestInfo, "iOnComplete");
var iOnError    = map_get(requestInfo, "iOnError");

// 3. Checks if Game Maker accepted our request (headers field is missing if not).
// 4. Could the PlayFab server be reached?

if not map_exists(headers) {
    pf_message("HTTP: no headers.", terminalMessageType.httpCallback, false)
    i_pf_callback_internal(iOnError, requestInfo, errorData);
} else if not os_is_network_connected() {
    pf_message("HTTP: no internet connection.", terminalMessageType.httpCallback, false);
    i_pf_callback_internal(iOnError, requestInfo, errorData);
}
else {
    //var response = json_decode(body); //The response map included all data sent by the PlayFab server.
    // 5. Did the server respond with the data we expected?
    // 6. Was the servers response processable?
    if not map_exists(response) {
        pf_message("HTTP: response data is missing", terminalMessageType.httpCallback, false)
        i_pf_callback_internal(iOnError, requestInfo, errorData);
    }
    else {
        //7. Did the server accept our request?
        if i_pf_http_was_successful(httpStatus) {
            i_pf_callback_internal(iOnComplete,requestInfo, result, httpStatus);
        }
        else {
            i_pf_callback_internal(iOnError, requestInfo, errorData);
        }
    }
}

// Clears all data not needed anymore.
map_delete(pf_service_requests, requestId);
map_destroy(requestInfo);
map_destroy(errorData);
map_destroy(result);

