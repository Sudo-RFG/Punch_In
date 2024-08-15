///@category Startup
/*
Object calls pi_engine_init and runs start up screen 
*/
///@description

intro_start = true;
frame = 0;
x = room_width div 6;
y = room_height div 6;
image_alpha = 0;
font = game_font;
draw_set_font(font);

//Menu
option = 1;

//Game surface
game_surface = noone;
cam_surface = noone;

