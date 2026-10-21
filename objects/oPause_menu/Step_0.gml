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
    switch(menu_level) {
        case 0: // Menú principal
            switch(pos) {
                case 0: 
                    // Opción 0: Reanudar el juego
                    global.paused = false;
                    instance_destroy();
                    break;

				case 1:
				    global.paused = false;

				    // Destruir elementos del juego FALTA EL FONDO
					with (oPlayer) instance_destroy();

				    instance_destroy(); // destruye el menú de pausa (oPause_menu)
					
					if (!instance_exists(oTitleMenu)) { //NO aparece le fondo TOT
					    instance_create_layer(0, 0, "Instances", oTitleMenu);
					};
		    }
			    
			break;
    }
}

