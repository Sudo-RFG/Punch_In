/// @description 
if (!surface_exists(game_surface))
{
    game_surface = surface_create(room_width,room_height);
}

//Background color
surface_set_target(game_surface);
draw_clear(c_black);
surface_reset_target();

if (surface_exists(cam_surface))
	{
	surface_set_target(cam_surface);
	draw_clear_alpha(c_white, 1);
	surface_reset_target();
	}