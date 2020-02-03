map_lookup = ds_map_create();
/*
	key : sprite_index
	value : map_renderOf (sprite_index)
			key : angle
*/

map_params = ds_map_create();
/*
	key: instance_id
	value : map_paramsOf (instance_id)
			key : params :
				  precision
*/
map_data = ds_map_create();
/*
	key: instance_id
	value : map_dataOf (instance_id)
			key : data :
				  last angle
*/
list_draw_request = ds_list_create();
/*
	value : instance_id
*/
list_draw = ds_list_create();
/*
	value : instance_id
*/