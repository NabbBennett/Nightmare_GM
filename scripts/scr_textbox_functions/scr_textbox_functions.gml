function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	
	//variables for every letter/character
	for (var c = 0; c < 500; c++)
	{
	//colors
	col_1[c, page_number] =  c_white;
	col_2[c, page_number] =  c_white;
	col_3[c, page_number] =  c_white;
	col_4[c, page_number] =  c_white;
	
	//floating
	float_text[c, page_number] = 0;
	float_dir[c, page_number] = c*25;
	
	//shake
	shake_text[c, page_number] = 0;
	shake_dir[c, page_number] = irandom(360);
	shake_timer[c,page_number] = irandom(4);
	}
	
	//textbox sprites, sides and sounds
	txtb_spr[page_number] =	sprTextBox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = sndText;
	}
	
	
//----------------------text VF-------------------------//
/// @param 1st_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){

for (var c = _start; c <= _end; c++)
	{
	col_1[c, page_number-1] = _col1;
	col_2[c, page_number-1] = _col2;
	col_3[c, page_number-1] = _col3;
	col_4[c, page_number-1] = _col4;

	}
}


/// @param 1st_char
/// @param last_char
function scr_text_float(_start, _end){
	
	for (var c = _start; c <= _end; c++)
	{
	float_text[c, page_number-1] = true;
	}
	
}


/// @param 1st_char
/// @param last_char
function scr_text_shake(_start, _end){
	
	for (var c = _start; c <= _end; c++)
	{
	shake_text[c, page_number-1] = true;
	}
	
}



///@param text
///@param [character]
function scr_text(_text){
	
	scr_set_defaults_for_text();

	text[page_number] = _text;
	
	//get character info
if argument_count > 1 {	
	switch(argument[1])
		{
			//no sprite and regular dialog
			case "no-sprite":
			speaker_sprite[page_number] = noone;
			snd[page_number] = sndNoSprite;
			break;
			case "no-sprite2":
			speaker_sprite[page_number] = noone;
			snd[page_number] = sndBones;
			break;
			
			//dusteye
			case "dusteye":
			speaker_sprite[page_number] = sprDustEye_Default;
			snd[page_number] = sndCritter;
			break;
			
			case "dusteye2":
			speaker_sprite[page_number] = sprDustEye_Default_1;
			snd[page_number] = sndCritter;
			break;
			
			case "dusteye-glimmer":
			speaker_sprite[page_number] = sprDustEye_Glimmer;
			snd[page_number] = sndCritter;
			break;
			
			case "dusteye-shock":
			speaker_sprite[page_number] = sprDustEye_Shock;
			snd[page_number] = sndCritter;
			break;
			
			case "dusteye-shy":
			speaker_sprite[page_number] = sprDustEye_Shy;
			snd[page_number] = sndCritter;
			break;
			
			case "dusteye-crying":
			speaker_sprite[page_number] = sprDustEye_Crying;
			snd[page_number] = sndCritter;
			break;
			
				//dustpile
			case "dustpile":
			speaker_sprite[page_number] = sprDustPile_Default;
			snd[page_number] = sndCritter2;
			break;
			
			case "dustpile2":
			speaker_sprite[page_number] = sprDustPile_Default_2;
			snd[page_number] = sndCritter2;			
			break;
			
			case "dustpile_thinking":
			speaker_sprite[page_number] = sprDustPile_Thinking;
			snd[page_number] = sndCritter2;
			break;
			
				//red adding
			case "red":
			speaker_sprite[page_number] = sprRedP_default_1;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red2":
			speaker_sprite[page_number] = sprRedP_default_2;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red3":
			speaker_sprite[page_number] = sprRedP_default_3;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red4":
			speaker_sprite[page_number] = sprRedP_default_4;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red5":
			speaker_sprite[page_number] = sprRedP_default_5;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red6":
			speaker_sprite[page_number] = sprRedP_default_6;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-disgusted":
			speaker_sprite[page_number] = sprRedP_disgusted_1;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-disgusted2":
			speaker_sprite[page_number] = sprRedP_disgusted_2;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-happy":
			speaker_sprite[page_number] = sprRedP_happy_1;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-happy2":
			speaker_sprite[page_number] = sprRedP_happy_2;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-happy3":
			speaker_sprite[page_number] = sprRedP_happy_3;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-shocked":
			speaker_sprite[page_number] = sprRedP_shocked_1;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-shocked2":
			speaker_sprite[page_number] = sprRedP_shocked_2;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-uncomfy":
			speaker_sprite[page_number] = sprRedP_uncomfy_1;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-uncomfy2":
			speaker_sprite[page_number] = sprRedP_uncomfy_2;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-uncomfy3":
			speaker_sprite[page_number] = sprRedP_uncomfy_3;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			case "red-angry":
			speaker_sprite[page_number] = sprRedP_angry_1;
			txtb_spr[page_number] = sprTextBox;
			snd[page_number] = sndText;
			break;
			
			//blue angel
			case "blue":
			speaker_sprite[page_number] = sprBlueP_regular_1;
			txtb_spr[page_number] = sprTextBoxBlue;
			snd[page_number] = sndBlue;
			break;
			case "blue-disgust":
			speaker_sprite[page_number] = sprBlueP_tired_1;
			txtb_spr[page_number] = sprTextBoxBlue;
			snd[page_number] = sndBlue;
			break;
			case "blue-happy":
			speaker_sprite[page_number] = sprBlueP_happy_1;
			txtb_spr[page_number] = sprTextBoxBlue;
			snd[page_number] = sndBlue;
			break;
			
		
	}
}

//side the chara is on
if argument_count > 2 {
	speaker_side[page_number] = argument[2];
}

	page_number++;

}


///@param option
///@param link_id
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

///@param text_id
function create_textbox(_text_id) {
	
	with ( instance_create_depth(0, 0, -9999, oTextBox) )
		{
			scr_game_text(_text_id);
		}

}