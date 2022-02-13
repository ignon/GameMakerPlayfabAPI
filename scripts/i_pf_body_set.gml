/// i_pf_body_set(indexName, indexValue, indexDataType, indexRequired,);

//Creates a new request body and returns its id

var body = obj_playfab.pf_body_id;

var indexName = argument0;
var indexValue = argument1;
var indexDataType = argument2;
var indexRequired = argument3;


pf_error(is_undefined(indexName), "indexName is undefined",true);
pf_error(!is_string(indexName), "indexName is supposed to be a string variable", true);

if is_undefined(indexValue) {
    pf_error(indexRequired, "Required index is missing", true);
}
else {
    switch(indexDataType) {
        case pf_data_type_int:
            pf_error(floor(indexValue) != indexValue, "indexValue is "+string(indexValue)+". Playfab does not handle decimals, only integer values.", true)
            map_set(body, indexName, indexValue);
        break;
        
        case pf_data_type_bool:
            pf_error(indexValue != 0 and indexValue != 1, "A boolean value is supposed to be 0 or 1", true);
            map_set(body, indexName, indexValue);
        break;
        
        case pf_data_type_string:
            pf_error(!is_string(indexValue), indexName + " is supposed to be a string!", true);
            map_set(body, indexName, indexValue);
        break;
        
        case pf_data_type_map:
            pf_error(!map_exists(body), "Map does not exist",true);
            map_set_map(body, indexName, indexValue);
        break
        
        case pf_data_type_list:
            pf_error(!list_exists(body), "List does not exist",true)
            map_set_list(body, indexName,indexValue);    
        break;
        
        default:
            pf_error(true, "indexDataType is either not set or has been set to uncorrect value.", true);
        break;
    }
}

return body;


