/// @description Insert description here
// You can write your code in this editor
//image_alpha -= 0.03;
//image_scale -= 0.05;


//if (image_scale < 0) image_scale = 0;

//image_xscale = image_scale;
//image_yscale = image_scale;
timer ++;
if (timer == timer_tick) {
	timer = 0;
	index ++;
}

if (index >= image_number)
{
	instance_destroy(self);
} else {
	image_index = index;
}

