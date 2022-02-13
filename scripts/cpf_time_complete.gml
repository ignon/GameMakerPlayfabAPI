var result = argument0;
var time_string = map_get(result, "Time");

if time_string != undefined {
    pf_create_datetime(time_string);
}
