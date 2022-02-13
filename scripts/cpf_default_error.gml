///cpf_default_error(requestInfo, errorData);


var requestInfo = argument0;
var errorData = argument1;


pf_error(!map_exists(requestInfo),"cpf_default_error: #requestInfo doesn't exist.",false );
pf_error(!map_exists(errorData), "cpf_default_error: #errorData doesn't exists.",false);


//var str = json_encode(requestInfo);
//show_message(str);
var str = ( "ERROR: #"+json_encode(errorData)+"##REQUEST: #"+json_encode(requestInfo) );
show_message("DEFAULT ERROR:##"+str);


