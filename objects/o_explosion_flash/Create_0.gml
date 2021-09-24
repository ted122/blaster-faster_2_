image_angle = random(360);
image_xscale = 0.75;
image_yscale = 0.75;

repeat (16) {
    instance_create_layer(x+random_range(-8 , 8), y+random_range(-8,8), "Effects", explosion_obj);
}
audio_play_sound(explode, 4, false);

// explosion spawns when enemy has 0 armor 