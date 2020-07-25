/// @description Insert description here
// You can write your code in this editor
event_inherited();

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Other
key_activate = keyboard_check_pressed(ord("E"));
key_attack = mouse_check_button_pressed(mb_left);
key_dodge = mouse_check_button_pressed(mb_right);

move_dir_x = 0;
move_dir_y = 0;
move_dir_x -= key_left; move_dir_x += key_right;
move_dir_y -= key_up; move_dir_y += key_down;

dust_timer ++;
if (abs(h_speed) >= 2 || abs(v_speed) >= 2) 
{
	if (dust_timer >= dust_tick) {
	dust_timer = 0;
	instance_create_depth(x, y + 18, 10, obj_dust);
	}
}


show_debug_message("hspeed:" + string(h_speed));

show_debug_message("vspeed:" + string(v_speed));