var enable = argument[0];
var pos = ds_list_find_index(mng_render.list_draw,id);

switch (enable) {
	case true:
		if (pos != -1) { exit; }
		ds_list_add(mng_render.list_draw,id);
	break;
	case false:
		if (pos == -1) { exit; }
		if (is_array(pos)) { 
			var i = array_length_1d(pos); repeat (array_length_1d(pos)) { i--;
				ds_list_delete(mng_render.list_draw,pos[i]);
			}
		}
		else {
			ds_list_delete(mng_render.list_draw,pos);
		}
	break;
}