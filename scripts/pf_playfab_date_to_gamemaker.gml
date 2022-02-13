if !is_string(argument0) return undefined;
var str = string_digits(argument0);

var year = real( string_copy(str,1,4) );
var month = real( string_copy(str, 5,2) );
var day = real( string_copy(str, 7,2) );

var hour = real( string_copy(str, 9,2) );
var minute = real( string_copy(str,11,2) );
var second = real( string_copy(str, 13,2) );

var time = date_create_datetime(year, month, day,hour, minute,second);

return time;
