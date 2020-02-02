var i = -1; repeat (ds_list_size(list_draw)) { i++; 
	var entry = list_draw[| i];
	if (entry == undefined || !instance_exists(entry)) { continue; }
	if (entry.sprite_index == -1)					   { continue; }
	
	var entry_lookup = [entry.sprite_index, map_params[? entry]];
	switch (map_lookup[? entry_lookup]) {
		case undefined:
			stacked_render(entry_lookup)
		break;
		default:
			__stacked_push_draw(entry_lookup);
		break;
	}
}
