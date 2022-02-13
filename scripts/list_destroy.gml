/**
 * list_destroy(List list, String reason)
 * Destroys the specified list
 */

var list = argument[0];
var reason = "";
if argument_count > 1 then reason = argument[1];

if not list_exists(list) return false;

ds_list_destroy(list);
list_meta_delete(list);

