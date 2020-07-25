/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (hit_start) {
	hit_timer++;
	image_index = 1;
	if (hit_timer == hit_length)
	{
		image_index = 0;
		hit_start = 0;
		hit_timer = 0;
	}
}

