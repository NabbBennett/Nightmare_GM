// Fondo semitransparente
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Calcular tamaño del menú
var _new_w = 0;
for (var i = 0; i < op_length; i++) {
    var _op_w = string_width(option[menu_level, i]);
    _new_w = max(_new_w, _op_w);
}
width = _new_w + op_border * 2;
height = op_border * 2 + sprite_get_height(sprMainFont) + (op_length - 1) * op_space;

// Centrar menú
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

// Fondo con sprite decorativo
draw_sprite_stretched(sprMenu, 0, x, y, width, height);

// Dibujar opciones
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_length; i++) {
    var _c = c_white;
    if pos == i _c = c_red;
    draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
}
