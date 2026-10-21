// --- Entradas ---
var up_key = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

// --- Longitud de opciones actuales ---
op_length = array_length(option[menu_level]);

// --- Movimiento del cursor ---
pos += down_key - up_key;
if (pos >= op_length) pos = 0;
if (pos < 0) pos = op_length - 1;

// --- Acción seleccionada ---
if (accept_key) {
    var _sml = menu_level;

    switch(menu_level) {
        case 0: // Menú principal
            switch(pos) {
                case 0: room_goto_next(); break;
                case 1: menu_level = 1; pos = 0; break;
                case 2: game_end(); break;
            }
            break;

        case 1: // Menú de opciones
            switch(pos) {
                case 0: // Window Size
                    global.window_mode = (global.window_mode + 1) mod 3;

                    switch(global.window_mode) {
                        case 0:
                            window_set_fullscreen(false);
                            window_set_size(800, 600);
                            display_set_gui_size(800, 600);
                            option[1][0] = "Window Size: Default";
                            break;
                        case 1:
                            window_set_fullscreen(false);
                            window_set_size(1280, 720);
                            display_set_gui_size(1280, 720);
                            option[1][0] = "Window Size: Ajustada";
                            break;
                        case 2:
                            window_set_fullscreen(true);
                            option[1][0] = "Window Size: Fullscreen";
                            break;
                    }
                    break;

                case 1: // Brightness
                    global.brightness -= 0.2;
                    if (global.brightness < 0.2) global.brightness = 1.0;
                    option[1][1] = "Brightness: " + string_format(global.brightness, 1, 1);
                    break;

                case 2: // Controls
                    show_message("Controles:\nW/S o ↑/↓ para moverse\nEnter/Espacio para seleccionar");
                    break;

                case 3: // Back
                    menu_level = 0;
                    pos = 0;
                    break;
            }
            break;
    }

    // Actualiza longitud del nuevo menú
    if (_sml != menu_level) {
        op_length = array_length(option[menu_level]);
    }
}

// --- Sonido al cambiar selección ---
if (pos != last_selected) {
    audio_play_sound(sngMenuSound, 1, false);
    last_selected = pos;
}
