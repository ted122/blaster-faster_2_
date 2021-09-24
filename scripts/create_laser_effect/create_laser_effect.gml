function create_laser_effect(){
var create_laser= instance_create_layer(x, y, "Effects" , explosion_obj);
create_laser.image_xscale =1
create_laser.image_yscale =1
}
// lasers are created in the effects layer of the room