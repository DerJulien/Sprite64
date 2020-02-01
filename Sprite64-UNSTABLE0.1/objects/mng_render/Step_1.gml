var i = 0; repeat (ds_list_size(list_draw)) { i++;
	var entry = list_draw[| i]; //sprite,x,y,...
		var __entry = map_lookup[? entry[DATA.SPRITE]] //sprite only
	var is_rendered = __entry == undefined
	if (is_rendered == false) {
		ds_queue_enqueue(queue_render,__entry);
		continue;
	}
}