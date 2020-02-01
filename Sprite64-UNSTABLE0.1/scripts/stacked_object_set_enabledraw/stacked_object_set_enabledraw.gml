var enable = argument[0];
var pos = ds_list_find_index(mng_render.list_render,id);

switch (enable) {
	case true:
		if (pos != -1) { exit; }
		ds_list_add(mng_render.list_render,id);
	break;
	case false:
		if (pos == -1) { exit; }
		if (is_array(pos)) { 
			var i = -1; repeat (array_length_1d(pos)) { i++;
				ds_list_delete(mng_render.list_render,pos[i]);
			}
		}
		else {
			ds_list_delete(mng_render.list_render,pos);
		}
	break;
}