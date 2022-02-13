/**
 * list_size(DSList list) Number
 * Return the size of the list
 */
 
var list = argument0;
if pf_error(!ds_exists(list,ds_type_list),"List does not exist",false) return 0;
return ds_list_size(list);

