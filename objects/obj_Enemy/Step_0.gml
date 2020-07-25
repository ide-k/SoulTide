/// @description Insert description here
// You can write your code in this editor
event_inherited();

switch(state)
{
	case "IDLE":
		// find a target or move randomly or something
		if(distance_to_point(obj_Child.x, obj_Child.y) < view_range)
		{
			state = "CHASE";
		}
		// If there is a target set state to "attack"		
		break;
		
	case "ATTACK": // FIX THIS ITS FUCKED UP 
		attack_timer++; // my brain turned off
		var inst = instance_create_layer(x,y, "Instances", obj_enemyBullet);
		inst.direction = direction;
		
		// if moving set state to "chase"
		if(distance_to_point(obj_Child.x, obj_Child.y) > attack_range)
		{
			state = "CHASE";
		}
		else
		{
			state = "IDLE"
		}
		break;
		
	case "CHASE":
		// Check player is in range, if in range attack
		move_towards_point(obj_Child.x, obj_Child.y, chase_speed);
		if(distance_to_point(obj_Child.x, obj_Child.y) < chase_range)
		{
			state = "ATTACK";
			speed = 0;
		}
		// else go idle
		else
		{
			state = "IDLE";	
		}
		break;
}