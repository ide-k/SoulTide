/// @description Insert description here
// You can write your code in this editor
event_inherited();
animation_timer ++;
if (hit_start) {
	hit_timer++;
	hit_x_offset = (sin(animation_timer * 0.4) * 3);
	image_index = 1;
	if (hit_timer == hit_length)
	{
		image_index = 0;
		hit_start = 0;
		hit_timer = 0;
		hit_x_offset = 0;
	}
}

