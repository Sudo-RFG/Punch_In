/* Master List of Scripts && Functions for Punch-In!
/
/
*/

#region Settings
/*
Contains all of the default settings for the game.
Runs upon launch.
*/

//Info
#macro game_name                                    "Punch-In!!" //name of the game
#macro version_string                               "0.0.1" //current game version

//Screen
#macro screen_width                                 256 //width of the game window
#macro screen_height                                224 //height of the game window


#region Startup 
/*
Sets up everything required for the start of the game. 
*/

function pi_engine_init()
    {
     //Game Size
	surface_resize(application_surface, screen_width, screen_height);
    window_set_size(screen_width, screen_height);
    window_center();
    window_set_caption(game_name + " " + version_string);
	
	//Camera
	view_enabled = true;
	view_visible[0] = true;
	view_wport[0] = screen_width;
	view_hport[0] = screen_height;
	view_camera[0] = camera_create_view(0, 0, screen_width, screen_height);
	
	//Surface depth disable (provides a performance boost when not using surface depth)
	surface_depth_disable(true);	
    }



#endregion
