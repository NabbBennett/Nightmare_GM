if (keyboard_check_pressed(vk_escape)) {
    global.paused = !global.paused;

    if (global.paused) {
        if (!instance_exists(oPause_menu)) {
            instance_create_layer(0, 0, "Instances", oPause_menu);
        }
    } else {
        with (oPause_menu) instance_destroy();
    }
}
