/// @description 
if ((!surface_exists(view_get_surface_id(0)) || view_get_surface_id(0) != cam_surface))
	{
	if (!surface_exists(cam_surface))
		{
		cam_surface = surface_create(screen_width, screen_height);
		}
	view_set_surface_id(0, cam_surface);
	}
//Make sure the surface exists first
if (!surface_exists(game_surface))
	{
	game_surface = surface_create(room_width, room_height);
	}
	
//Draw the new surface
gpu_set_blendenable(false);

//Draw the surface
draw_surface(game_surface, 0, 0);

shader_reset();

gpu_set_blendenable(true);