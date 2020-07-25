
// PLAYER INPUT
/* 
	Note to Khanna: dont do this. this is fine for the demo but this is utterly retarded 
	and should be replaced with a proper input manager ASAP 
*/
//Movement



//this is dumb and should be two seperate values. Now it is! 
inputDirection = point_direction(0, 0, move_dir_x, move_dir_y);

//Normalize our input so its not Fucking Dumb (making diagonal movements move faster)
if ((move_dir_x != 0) or (move_dir_y != 0))
{
  var l = sqrt(move_dir_x * move_dir_x + move_dir_y * move_dir_y);
  move_dir_x /= l; 
  move_dir_y /= l;
}


h_speed += move_dir_x * move_speed;
v_speed += move_dir_y * move_speed;

//Slowing speed by brake_speed
if (move_dir_x == 0 || (hspeed * move_dir_x < 0)) 
{
	h_speed -= h_speed * brake_speed;
}

if (move_dir_y == 0 || (v_speed * move_dir_y < 0)) 
{
	v_speed -= v_speed * brake_speed;
}

//Clamp speed so we dont move higher than move_speed
h_speed = clamp(h_speed, -move_speed, move_speed);
v_speed = clamp(v_speed, -move_speed, move_speed);

// Store position where pawn wants to move
var xtarg = x+h_speed;
var ytarg = y+v_speed;

//Collision Detection, move back if colliding, set speed to 0 (stops dust, etc)
if (place_meeting(x, ytarg, obj_solid)) {
    ytarg -= v_speed;
	v_speed = 0;
}

if (place_meeting(xtarg, y, obj_solid)) {
    xtarg -= h_speed;
	h_speed = 0;
}

//Set position to target position
x = xtarg;
y = ytarg;

//Animation direction stuff
sprite_index = spriteIdle;
if (move_dir_x != 0 || move_dir_y != 0) {
	direction = inputDirection;
}

// Update Image Index
script_execute(animation_script);
