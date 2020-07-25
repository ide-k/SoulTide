 /// @description Insert description here
// You can write your code in this editor


key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
     
//Other
key_activate = keyboard_check_pressed(ord("E"));
key_attack = mouse_check_button_pressed(mb_left);
key_dodge = mouse_check_button_pressed(mb_right);

if (key_attack) 
{
	temp_bullet = instance_create_depth(mouse_x, mouse_y, 1, obj_bulletPlayer);
}

move_dir_x = 0;
move_dir_y = 0;

move_dir_x -= key_left; move_dir_x += key_right;
move_dir_y -= key_up; move_dir_y += key_down;

dust_timer ++;
if (abs(h_speed) >= 2 || abs(v_speed) >= 2) 
{
	if (dust_timer >= dust_tick) {
		dust_timer = 0;
		temp_dust = instance_create_depth(x, y + 25, 10, obj_dust);
	
		
		if (isDodging == true) {
			temp_dust.timer = 0;
			temp_dust.timer_tick = 2;
			temp_dust.image_alpha = 0.3;
			//temp_dust.image_xscale = 1.5;
			//temp_dust.image_yscale = 1.5;
		}
		
	}
}

// when some variable is true, start an incrementing variable

if(key_dodge && isDodging == false )
{
	
	isDodging = true;
	dodge_animation_magic = 0;
	move_speed = move_speed_dodge;
	dust_timer = 0;
	dust_tick = 1;
	dodge_dir_x = move_dir_x;
	dodge_dir_y = move_dir_y;
	
}

if (isDodging) {
dodge_timer++;

if (dodge_timer >= dodge_length - (dodge_length / 5)) {
	dodge_animation_magic-=2;
} else {
	dodge_animation_magic++;
}

	//sprite_index = spriteDodge;
	move_dir_x = dodge_dir_x;
	move_dir_y = dodge_dir_y;
	
	
	// Store position where pawn wants to move
	var xstarg = x+dodge_dir_x;
	var ystarg = y+dodge_dir_y;

	//Collision Detection, move back if colliding, set speed to 0 (stops dust, etc)
	if (place_meeting(x, ystarg, obj_solid)) {
	    //ytarg -= dodge_dir_y;
		dodge_dir_y = 0;
		dodge_timer = dodge_length + 1;
	}

	if (place_meeting(xstarg, y, obj_solid)) {
	    //xtarg -= dodge_dir_x;
		dodge_dir_x = 0;
		dodge_timer = dodge_length + 1;
	}
	
	if(dodge_timer >= dodge_length)
	{
		isDodging = false;
		move_speed = move_speed_standard;
		dust_tick = 3;
		dust_timer = 0;
		dodge_timer = 0;
		//sprite_index = spriteIdle;
	}
}

//show_debug_message("hspeed:" + string(h_speed));

//show_debug_message("vspeed:" + string(v_speed));
show_debug_message("key_dodge: " + string(key_dodge));
show_debug_message("isDodging: " + string(isDodging));
show_debug_message("dodge_animation_magic: " + string(dodge_animation_magic));
target_line_dir = point_direction(x, y + target_y_offset, mouse_x, mouse_y);
draw_len = max(room_width,room_height)*pi;
endx1 = lengthdir_x(draw_len, target_line_dir);

endy1 = lengthdir_y(draw_len, target_line_dir);
crosshair_rot ++;
event_inherited();
