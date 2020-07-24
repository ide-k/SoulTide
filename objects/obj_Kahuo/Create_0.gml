state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 4.0;
speedDodge = 6.0;
distanceDodge = 64;

spriteDodge = spr_KahuoDodge;
spriteRun = spr_KahuoRun;
spriteIdle = spr_KahuoIdle;
localFrame = 0;