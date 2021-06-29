/// @description Select slime
moveble = true;
var n = instance_number(Entity);
for(var i=0; i< n; i++){
	var obj = instance_find(Entity, i);
	if(obj.mouse_select)
		obj.mouse_select = false;
}
mouse_select = true;
var control_obj = instance_find(ControlObj, 0);
control_obj.select_object = self;