/// @description Insert description here
// You can write your code in this editor
if (surface_exists(game_surface)){
    
surface_set_target(game_surface);
//Title Logo
draw_sprite(pi_spr_title,0,0,40);
draw_set_color(c_white);

//Cursor
if option == 1 {
draw_sprite_ext(pi_spr_cursor,0,x-60,y+23,1,1,0,c_white,1);
draw_sprite_ext(pi_spr_cursor,0,x*2-70,y+23,-1,1,0,c_white,1);
}
else if option == 2 {
draw_sprite_ext(pi_spr_cursor,0,x-60,y+39,1,1,0,c_white,1);
draw_sprite_ext(pi_spr_cursor,0,x*2-70,y+39,-1,1,0,c_white,1);	
}
//Menu
var _option = "NEW";
var _option2 = "CONTINUE";
var _color = $a0c1e8;

draw_set_halign(fa_center);
draw_set_color(_color);
draw_text(x,y+27,_option);
draw_text(x,y+43,_option2);

surface_reset_target();
}