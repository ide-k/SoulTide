/// @desc initialization and globals
global.gamePaused = false;

global.iCamera = instance_create_layer(0,0,layer,obj_camera);



room_goto(ROOM_START);