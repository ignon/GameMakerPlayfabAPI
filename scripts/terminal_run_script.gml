/// terminal_run_script(scriptIndex);

var script = argument0;

switch(script) {

case "pf_init":
    var gameId = show_question("Please specify the game id:");
    pf_init(gameId);
break;

case "pf_login_with_custom_id":
    var customId = show_question("Please specify the custom id:");
    var createAccount = show_question("Should we create an account if one doesn't exist?")
    
    pf_login_with_custom_id(cpf_login_with_custom_id_complete, cpf_login_with_custom_id_error, customId, createAccount, undefined);
break;


}
