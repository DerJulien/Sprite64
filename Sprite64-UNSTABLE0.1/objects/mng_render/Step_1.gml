var i = -1; repeat (ds_list_size(list_draw_request)) { i++;
	var entry = list_draw_request[| i];
	if (!instance_exists(entry) || entry == undefined) { continue; }
	if (map_params[? entry] == undefined)			   { raise(ERR_UND_PARAMS); }
	if (entry.sprite_index == -1)					   { continue; }
	
	var __entry = entry.sprite_index;
	switch (map_lookup[? __entry]) { 
		case undefined:	stacked_render(entry); break;
		default:		stacked_draw  (entry); break;
	}
}