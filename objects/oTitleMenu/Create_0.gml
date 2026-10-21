// --- Configuración inicial del menú ---
menu_level = 0;
pos = 0;
op_border = 8;
op_space = 16;
op_length = 0;
last_selected = -1;

// --- Variables globales (si no existen) ---
if (!variable_global_exists("window_mode")) global.window_mode = 0;
if (!variable_global_exists("brightness")) global.brightness = 1.0;

// --- Opciones de menú ---
option = array_create(2);

// Menú principal
option[0] = ["Start Game", "Settings", "Quit Game"];

// Submenú de configuración
option[1] = [
    "Window Size: Default",
    "Brightness: 1.0",
    "Controls",
    "Back"
];

// Longitud del menú actual
op_length = array_length(option[menu_level]);

// Resetear variables globales
global.score = 0;
global.level = 1;
