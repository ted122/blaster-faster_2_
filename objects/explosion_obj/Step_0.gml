if (image_alpha > 0 ) {
	image_alpha -= fade_speed;
} else {
	instance_destroy();
}
// when the right mouse button is pressed the image_obj explosion should be shown