/// i_pf_header_create(addHeaderContentTypeAsJson,addHeaderXAuthentication )

var headers = map_create("headers");
obj_playfab.pf_header_id = headers;

var addHeaderContentTypeAsJson = argument0;
if (addHeaderContentTypeAsJson) {
    map_set(headers, "Content-Type", "application/json");
}

var addHeaderXAuthentication = argument1;
if (addHeaderXAuthentication) {
    pf_error(obj_playfab.pf_session_ticket == "", "Can't set X-Authentication because player has not authenticated yet!", true );
    map_set(headers, "X-Authentication", obj_playfab.pf_session_ticket);
}

return headers;
