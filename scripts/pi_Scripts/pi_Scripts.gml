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
#macro screen_width                                 768//NES DEFAULT: 256 //width of the game window
#macro screen_height                                672//NES DEFAULT: 224 //height of the game window

//Fonts
#macro game_font									font_add_sprite_ext(pi_spr_font, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.'!-,:# (?",true,1);
//Camera
#macro camera_width_start							256 //{real} The starting width of the game camera.
#macro camera_height_start							224 //{real} The starting height of the game camera.
#endregion 

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
	cam = camera_create_view(0, 0, screen_width, screen_height);
	cam_w = camera_width_start;
	cam_h = camera_height_start;
	view_camera[0] = cam;
	camera_set_view_size(cam, cam_w, cam_h);
	//Surface depth disable (provides a performance boost when not using surface depth)
	surface_depth_disable(true);	
    }



#endregion

#region Controls
function pi_Controls(){
if !variable_instance_exists(id,"key_left_pressed"){
key_left_pressed = 0;key_right_pressed = 0;key_up_pressed = 0;key_down_pressed = 0}
key_up = keyboard_check(vk_up) or keyboard_check(ord("W")) or gamepad_axis_value(0,gp_axislv) < -0.5 or gamepad_button_check(0,gp_padu)
key_down = keyboard_check(vk_down) or keyboard_check(ord("S")) or gamepad_axis_value(0,gp_axislv) > 0.5 or gamepad_button_check(0,gp_padd)
key_left = keyboard_check(vk_left) or keyboard_check(ord("A")) or gamepad_axis_value(0,gp_axislh) < -0.5 or gamepad_button_check(0,gp_padl)
key_right = keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_axis_value(0,gp_axislh) > 0.5 or gamepad_button_check(0,gp_padr)
key_left_punch = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) or keyboard_check_pressed(ord("Z"))
key_right_punch = gamepad_button_check_pressed(0,gp_face2) or keyboard_check_pressed(ord("X"))
key_shift = keyboard_check(vk_shift) or gamepad_button_check(0,gp_face3)
key_shift_pressed = keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(0,gp_face3)
if key_right{key_right_pressed += 1}else{key_right_pressed = 0}
if key_left{key_left_pressed += 1}else{key_left_pressed = 0}
if key_up{key_up_pressed += 1}else{key_up_pressed = 0}
if key_down{key_down_pressed += 1}else{key_down_pressed = 0}
}

#endregion 