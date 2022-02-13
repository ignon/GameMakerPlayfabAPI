/// pf_error(toggle,message,abort)

var toggle = argument0;
var message = argument1;
var abort = argument2;


if toggle {
    if !abort {
        show_debug_message("ERROR: "+message);
    }
    else {
        show_error("ERROR: "+message,true);
        game_end();
    }
    
    
}

return toggle;
