var httpStatus = argument0;

pf_error(!is_real(httpStatus), "httpStatus is not a number", true );

if (httpStatus >= 200 and httpStatus < 300) {
    return true;
} else {
         if (httpStatus < 200) pf_message("httpStatus = "+string(httpStatus) + ": Informational response", terminalMessageType.httpCallback, false);
    else if (httpStatus < 400) pf_message("httpStatus = "+string(httpStatus) + ": Redirection", terminalMessageType.httpCallback, false);
    else if (httpStatus < 500) pf_message("httpStatus = "+string(httpStatus) + ": Client error", terminalMessageType.httpCallback, false);
    else if (httpStatus < 600) pf_message("httpStatus = "+string(httpStatus) + ": Server error", terminalMessageType.httpCallback, false);
    else                       pf_message("Unknown HTTP status: "+ string(httpStatus), terminalMessageType.httpCallback, false );
}

return false;
