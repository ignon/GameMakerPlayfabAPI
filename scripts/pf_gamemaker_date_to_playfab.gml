var date = argument0;
if is_string(date) return undefined;
if is_undefined(date) return undefined; 

var year = date_get_year(date);
year = string_format(year,0,0);

var month = date_get_month(date);
month = string_format(month,0,0);
if string_length(month) < 2 {
    month = "0"+month;
}

var day = date_get_day(date);
day = string_format(day,0,0);
if string_length(day) < 2 {
    day = "0"+day;
}

var hour = date_get_hour(date);
hour = string_format(day,0,0);
if string_length(day) < 2 {
    hour = "0"+day;
}

var minute = date_get_minute(date);
minute = string_format(minute,0,0);
if string_length(minute) < 2 {
    minute = "0"+minute;
}

var second = date_get_second(date);
second = string_format(second,0,0);
if string_length(second) < 2 {
    second = "0"+second;
}

var str = year +"-"+ month +"-"+ day +"T"+ hour +":"+ minute +":"+ second + "Z";
show_message(str);
return str;
