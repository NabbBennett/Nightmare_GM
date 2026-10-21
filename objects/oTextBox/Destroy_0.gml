if !variable_instance_exists(id, "starting_text") && room = rmBath_Start

{
	room_goto_next();
}

if !variable_instance_exists(id, "starting_text2") && room = rmBath_Start_2

{
	room_goto_next();
}


