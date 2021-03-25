randomize();
instance_destroy(oPlayer);

global.gamePaused = false;

instance_create_layer(0, 0, layer, oCamera);
instance_create_layer(0, 0, layer, oTransition);

room_goto(rmHome);