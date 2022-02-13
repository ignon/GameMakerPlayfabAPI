///pf_send_score([Int]score)
var scoreMap = map_create("Score");
map_set(scoreMap, "StatisticName", "Score");
map_set(scoreMap, "Version",string_format(0,0,0));
map_set(scoreMap, "Value", string_format(argument0,0,0));

var statistics = list_create("Statistics");
list_add_map(statistics, scoreMap);

var map = map_create("ScoresMap");
map_set_list(map, "Statistics",statistics);

pf_update_player_statistics(cpf_update_player_statistics_complete,cpf_default_error,map);


