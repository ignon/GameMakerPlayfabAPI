switch(argument_count) {
    case 2: script_execute(argument[0],argument[1]); break;
    case 3: script_execute(argument[0],argument[1],argument[2]); break;
    case 4: script_execute(argument[0],argument[1],argument[2],argument[3]); break;
}

obj_playfab.pf_service_processing = false;
