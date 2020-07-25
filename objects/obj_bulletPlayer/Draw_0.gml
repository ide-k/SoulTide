/// @description Insert description here
// You can write your code in this editor
for (i = 1; i < 20; i ++) {
	
	draw_sprite_ext(sprite_index, image_index, x - lengthdir_x(i, bullet_dir + (sin(animation_timer * 0.2) * 5)) , y - lengthdir_y(i, bullet_dir + (sin(animation_timer * 0.2) * 5)), image_xscale, image_yscale, 0, c_white, 0.2 - (0.005 * i));
}

draw_sprite_ext(sprite_index, image_index, x ,y, image_xscale, image_yscale, 0, c_white, 1);