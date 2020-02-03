var error = argument[0];
var __id = id;
var __oi = __id.object_index;
var __name = object_get_name(__oi);

var debug_info = error +
"Raised in : " + string(__name) + "\n" +
string(__oi) + "::" + string(__id);

show_message(debug_info)