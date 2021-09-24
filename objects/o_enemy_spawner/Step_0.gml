var _enemy_number = instance_number(obj_ship_parent) - 1;

if (_enemy_number == 3) {
var _center_x = room_width /2;
var _center_y = room_height/2;
repeat(3) {
	var _direction = random(360);
	var _distance = random_range(room_width * 0.6, room_width * 1.05);
	var _x = _center_x + lengthdir_x(_distance, _direction );
	var _y = _center_y + lengthdir_y(_distance,_direction);
	instance_create_layer(_x, _y, "Instances", enemy_ship);
}
}

/**

var _enemy_number = instance_number(obj_ship_parent) - 1;

if (_enemy_number == 0) {
var _enemies_to_spawn = 3 + score div 10;
spawn_enemies (_enemys_to_spawn, enemy_ship );

_enemies _to_spawn = 1 +div 20;
spawn_enemies(2,o_enemy_ship_two);
}