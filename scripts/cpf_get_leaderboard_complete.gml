
clipboard_set_text(json_encode(argument0));
show_message("Leaderboard:"+json_encode(argument0) )

if map_exists(argument0) map_destroy(argument0);
