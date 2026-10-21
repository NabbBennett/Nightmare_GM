var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p0 = 1;
var _p1 = .8;
var _p2 = .6;
var _p3 = .4;
var _p4 = .2;

//sky
draw_sprite_tiled(sHallwayBackground, 0, _camx*_p0, _camy*_p0);

//first building row
draw_sprite_tiled(sHallwayBackground, 1, _camx*_p1, _camy*_p1);

//second building row
draw_sprite_tiled(sHallwayBackground, 2, _camx*_p2, _camy*_p2);

//third building row
draw_sprite_tiled(sHallwayBackground, 3, _camx*_p3, _camy*_p3);

//fourth building row
draw_sprite_tiled(sHallwayBackground, 4, _camx*_p4, _camy*_p4);