if (initialized == true and pf_service_processing == false) {
    if list_size(pf_service_queue) > 0 {
        pf_message("Queue processing", terminalMessageType.systemMessage, false);
        var req = ds_list_find_value(pf_service_queue,0);
        
        
        var map = map_deep_copy(req);
        
        i_pf_request_perform(req);
        
        /*var onComplete = map_get(map,"onComplete");
        var onError    = map_get(map, "onError");
        var iOnComplete= map_get(map, "onComplete");
        var iOnError   = map_get(map, "iOnError");*/
        
        ds_list_delete(pf_service_queue, 0);
    }
}
