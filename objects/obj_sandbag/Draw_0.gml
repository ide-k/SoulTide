/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_halign(fa_center);

draw_set_alpha(0.5);
draw_set_font(fnt_hp);
draw_text_outlined(x + hit_x_offset, y - 36 + (sin(animation_timer * 0.1) * 3), c_white, c_black, string(hp_current) + "HP");

draw_set_halign(fa_left);