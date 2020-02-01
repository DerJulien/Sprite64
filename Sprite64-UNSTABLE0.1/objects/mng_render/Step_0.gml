var i = -1; repeat (ds_list_size(list_render)) { i++; 
	var entry = list_render[| i];
	if (entry == undefined || instance_exists(entry) == false) { continue; }
	
	var entry_lookup = [entry.sprite_index, map_params[? entry]];
	if (map_lookup[? entry_lookup] == undefined) { 
		stacked_render(entry_lookup); 
	}
	
}
