// Player Input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

// track mouse
//image_angle = point_direction(x,y, mouse_x, mouse_y);

// for later
keyActivate = keyboard_check_pressed(ord("E"));
keyAttack = mouse_check_button_pressed(mb_left);
keyDodge = mouse_check_button_pressed(mb_right);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if(!global.gamePaused) { script_execute(state); }