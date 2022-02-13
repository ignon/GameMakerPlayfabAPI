var result = argument0;


var time_string = map_get(result, "Time");
cpf_default_complete(argument0);
if time_string != undefined {
    var time = pf_playfab_date_to_gamemaker(time_string);
}
