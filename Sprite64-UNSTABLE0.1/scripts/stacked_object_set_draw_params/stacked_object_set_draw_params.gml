///@argsargmap,id*
/*
	//using argmaps : 
	
	var params = PMD_DRAW_OSTACKED;
	
		//changing draw parameters : 
		//params[? PM_DRAW_OSTACKED.PRECISION] = 360/<step>
		//	step is the angular render step paramter; that means :
		//	every n step(s) a new angle is rendered, the lower this number the more angles are rendered.
		//  due to surface size restrictions you will need to lower this number if your sprite is large
		//	step must be a positive integer
		//	it is highly recommended to choose a number n for step that results in another positive INTEGER
		//params[? PM_DRAW_OSTACKED.DYNAMIC] = <boolean>
		//	the dynamic parameter changes the method used to render your sprite
		//	it is recommended to use false for static objects such as environmental objects
		//	it is recommended to use true for objects that turn a lot or have animations such as players or enemies
		//params[? PM_DRAW_OSTACKED.I_(IND/NUM/COL/ALPHA)] = <int/float>
		//	these are the standard draw parameters : 
		//		image 
		//		  index  : leave this at default if your sprite isnt dynamic
		//		  number : leave this at default if your sprite isnt dynamic
		//		  color
		//		  alpha
	
	stacked_object_set_draw_params(params);
	
	NOTE :
	initialising this in this specific format is mandatory for macro functionality.
	you must ALWAYS use the code provided above.
*/
var arg_map = argument[0];
var __id = argument_count > 1 ? argument[1] : id;

if (!is_real(arg_map) || !ds_exists(arg_map, ds_type_map)) { 
	show_message("Wrong type of argument provided in: \nstacked_object_set_draw_params\nthrown by: " + 
				  object_get_name(id.object_index)); 
	exit; 
} 

mng_render.map_params[? __id] = arg_map;
return arg_map