function bounce_off_screen_edge() {
	var _half_width = sprite_get_width(sprite_index) /2;
	var _half_height = sprite_get_height(sprite_index) /2;
	var _momentum_loss = 0.5;
// the sprite_get_width and height added for mommentum 
	if (x < _half_width or x > room_width-_half_width) {
		x = xprevious;
		hspeed = -hspeed;
	}
	if (y < _half_height or y > room_height - _half_height) {
		y = yprevious
		vspeed = -vspeed * _momentum_loss;
	}


}
// player bounces off the edge of the screen 