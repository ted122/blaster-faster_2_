var _player_ship = instance_find(player_o, 0);
if (_player_ship == noone) exit;



var _distance = point_distance(x,y, _player_ship.x, _player_ship.y);
var _direction =  point_distance(x,y, _player_ship.x, _player_ship.y);

if (_distance <= attack_range) {
	var _laser = instance_create_layer(x, y, "Instances", o_enemy_laser);
	_laser.speed = 2;
	_laser.image_angle = _direction;
	_laser.direction = _direction;
	alarm[0] = fire_rate;
}

// alarm used for the laser to find the player location and shows attack range