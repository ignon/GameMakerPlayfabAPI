var result = argument0;
show_message("News: "+json_encode(result));

if ds_exists(result,ds_type_map) {
    ds_map_destroy(result);
}

