/// @description player controlls and player max speed
// setting the sprite to face the mouse 
var mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = mouse_direction;

var _thrust = mouse_check_button(mb_right);
image_index = _thrust;
// sprite changes when you press the right mouse button
if (_thrust)  {
    motion_add(image_angle, acceleration);
	if (speed >max_speed) {
	    speed = max_speed;	
	}
		var _offset = random_range(-4, 4);
		var _length = -16;
		var _x = x + lengthdir_x(_length, image_angle) + _offset; 
		var _y = y+  lengthdir_y(_length, image_angle) + _offset;
		repeat (4) {
		instance_create_layer(_x, _y, "Effects", explosion_obj);
	}
} else {
    friction = friction_amount;
}
// creates friction with the ship controls 
var _fire_laser = mouse_check_button_pressed(mb_left);
if (_fire_laser) {
    create_right_laser();
	create_left_laser();
}
// laser created


