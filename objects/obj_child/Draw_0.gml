draw_set_color(c_black);
draw_set_alpha(0.5);
draw_line_width(x, y + target_y_offset,  x + endx1, y + target_y_offset + endy1, 3);

draw_set_alpha(1);
//draw_line_width(x, y, target_line_x, target_line_y, 3);

if (isDodging) {
for (i = 1; i < dodge_animation_magic; i ++) {
	
	draw_sprite_ext(sprite_index, image_index, x - (dodge_dir_x * i) , y - (dodge_dir_y * i), image_xscale, image_yscale, 0, make_color_hsv(66, random_range(60, 90), 80), 0.1);
}

}
//draw_sprite_ext(sprite_index, image_index, x, y+ 45, image_xscale, -image_yscale/2, 0, c_white, 0.2);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);


draw_sprite_ext(spr_crosshair, 0, mouse_x, mouse_y, 1, 1, crosshair_rot, c_white, 1);