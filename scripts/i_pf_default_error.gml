///i_pf_default_error(onError,error, httpStatus, requestInfo)
var requestInfo = argument0;
var errorData = argument1;

onComplete = map_get(requestInfo, "onComplete");
onError    = map_get(requestInfo, "onError");
context    = map_get(requestInfo, "context");

pf_error(!map_exists(requestInfo), "requestInfo does not exist", true);

i_pf_callback(context, onError, requestInfo, errorData);

