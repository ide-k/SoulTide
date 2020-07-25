state = PlayerStateFree;
animation_script = PlayerAnimateSprite;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

image_speed = 0;
h_speed = 0;
v_speed = 0;

move_dir_x = 0;
move_dir_y = 0;

move_speed = 4;
move_speed_standard = 4;
move_speed_dodge = 8;
accel_speed = 0.1;
brake_speed = 0.2;






speedWalk = 4.0;
speedDodge = 6.0;
distanceDodge = 64;

spriteDodge = spr_prismBot;
spriteRun = spr_prismBot;
spriteIdle = spr_prismBot;
localFrame = 0;