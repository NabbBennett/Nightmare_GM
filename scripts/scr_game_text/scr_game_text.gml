/// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {
	
case"starting_text":
	scr_text("You have been asleep for a while... ");
	scr_text("The feeling of waking up pops your dream bubble.");
	scr_text("... is time to wake up.");
		scr_text_float(11,19);
	scr_text("wake up...");
		scr_text_color(0, 8, c_red, c_red, c_red, c_red);
		scr_text_float(0,8);
	scr_text("WAKE UP RED!");
		scr_text_color(0, 11, c_red, c_red, c_red, c_red);
		scr_text_shake(0,11);
	break;
	
case"starting_text2":
	scr_text("You're finally awake huh?");
	scr_text("And you're disoriented after you passed out on the floor of a public restroom.");
		scr_text_float(13,26);
		scr_text_color(66, 81, c_red, c_red, c_red, c_red);
	scr_text("That's a little strange and you feel kinda embarrased about it.");
	scr_text("You shake your head a bit to clear the fog in your brain.");
	scr_text("Still you remember... nothing.");
	scr_text("Are you gonna stand up and find out... why?");
	break;
		
	
case "left_sink":
    var r = irandom(2);
	    switch (r) {
			case 0:
			scr_text("There are rose petals scattered on top of the sink.");
			break;
			case 1:
			scr_text("This bathroom is weird.");
			break;
			case 2:
			scr_text("Smells like cleaning supplies and dust.");
			break;
		}
		break;
		
case "right_sink":
	scr_text("There's a note taped to the mirror wall..");
		scr_option("Read it.", "right_sink - read it");
	break;
		case "right_sink - read it":
		scr_text("IF YOU NEED A NEW DREAM! BUY ONE TODAY AT THE GREENERY MALL SALE!:o) - SP", "no-sprite2");
			scr_text_color(0, 76, c_teal, c_teal, c_teal, c_teal);
			scr_text_shake(1,76);
			scr_text("That's a weird ad...", "red-uncomfy");
			global.seen_right_sink = true;
			show_debug_message(">> right sink seen");
	break;

case "right_sink - seen":
	global.seen_right_sink = true;
	show_debug_message(">>activated FLAG: seen_right_sink");
	break;

case "walleyes":
			scr_text("Unknown critters are watching you from behind the wall.");
			break;


case "dusteye":
//variable created
	
	if (!global.seen_right_sink) {
		instance_destroy(); // will destroy if not needed to be existing
	}
	
	if (!variable_global_exists("seen_right_sink")) {
        global.seen_right_sink = false;
    }
	
	
	if (!variable_global_exists("seen_dusteye")) {
        global.seen_dusteye = false;
    }
	
    if (global.seen_right_sink && global.seen_dusteye = false) {//flag is ON
		show_debug_message(">> detected FLAG: seen_right_sink = TRUE and seen_dusteye = FALSE");
		scr_text("A-are you a mouse?", "red-shocked");
		scr_text("GYHAAAAA!! A DAYDREAM SAW ME!!! IM SORRY-GYHAA!!", "dusteye-shock", -1);
			scr_text_shake(0, 48);
			scr_text_color(0, 13, c_red, c_red, c_red, c_red);
			scr_text_color(13, 21, c_dkgray, c_dkgray, c_dkgray, c_dkgray);
			scr_text_color(22, 49, c_red, c_red, c_red, c_red);
		scr_text("No! Don't apologize! I just saw you running behind me and-", "red-uncomfy");
		scr_text("I just.. I don't know where I am.", "red-uncomfy3");
		scr_text("y-you're not gonna hurt me?...", "dusteye-shock", -1);
			scr_text_shake(0, 30);
			scr_text_color(0, 30, c_red, c_red, c_red, c_red);
		scr_text("No... I won't.", "red-uncomfy");
		scr_text("THANK YOU! THANK YOU! ur a nice daydream!", "dusteye-glimmer", -1);
			scr_text_shake(0, 55);
			scr_text_color(0, 55, c_red, c_red, c_red, c_red);
			global.seen_dusteye = true; 
			break;
	}
	
	if (global.seen_dusteye) {
			show_debug_message(">> detected FLAG: seen_dusteye = TRUE");
		var r = irandom(2);
	    switch (r) {
			case 0:
			scr_text("The creature's single eye is fixated on you.");
		break;
			case 1:
			scr_text("The creature is a little anxious with your presence.");	
			break;
			case 2:
			scr_text("The creature glows with a red hue.");	
		}
		}
	
	else {
		show_debug_message(">> FLAG seen_right_sink is FALSE: no diálogo para dusteye.");
        exit;
	}
	
	case "dusteye - seen":
	global.seen_dusteye = true;
	show_debug_message(">>activated FLAG: seen_dusteye");
	break;
	
case "red_wc":
	scr_text ("The toilet is filled with an unrecognizable red water.");
	scr_text ("You avoid the thought of dipping your hand in.");
	scr_text ("I never wanted to do that...", "red-uncomfy");
	break;
		

case "blue_door":
    var r = irandom(1);
    switch (r) {
        case 0:
            scr_text("You can't enter this door, you're not blue.");
			 scr_text_color(38, 42, c_blue, c_blue, c_blue, c_blue);
			 scr_text_shake(38,42);
            break;
        case 1:
            scr_text("It might never open for you.");
			scr_text_float(0,28);
            break;
    }
    break;
	
case "toilet_paper":
		scr_text("The classic, original TP.");
		break;
		
case "eye_pile":

	if (!variable_global_exists("seen_dustpile")) {
        global.seen_dustpile = false; 
		}
		
	if (global.seen_dusteye){
	scr_text("if u nEed any guidance in the suBway, the [anGeL] can help u-biaAn", "dustpile", -1);
			scr_text_color(0, 41, c_red, c_red, c_red, c_red);
			scr_text_color(42, 49, c_white, c_white, c_white, c_white);
			scr_text_color(50, 66, c_red, c_red, c_red, c_red);
			scr_text_shake(0,66);
	scr_text("if u seE a [shadoW] at the End of the hallEway..", "dustpile2", -1);
			scr_text_color(0, 10, c_red, c_red, c_red, c_red);
			scr_text_color(11, 19, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey);			
			scr_text_color(20, 48, c_red, c_red, c_red, c_red);
			scr_text_shake(0,48);		
	scr_text("paY no attenTion to it. hehe", "dustpile_thinking", -1);	
			scr_text_color(0, 28, c_red, c_red, c_red, c_red);
			scr_text_shake(0,28);		
	} else {
		
		scr_text("helO, u finALly out of toiLet-bian", "dustpile", -1);
			scr_text_color(0, 34, c_red, c_red, c_red, c_red);
			scr_text_shake(0,34);
		scr_text("Um.. yeah, sorry.. I hope you weren't waiting out here for long.", "red-uncomfy");
		scr_text("oh noNo, no wait heRe, just chiLLing wIth me friends-bian", "dustpile", -1);
			scr_text_color(0, 60, c_red, c_red, c_red, c_red);		
			scr_text_shake(0,60);
		scr_text("I just feel like I need to stretch my legs a bit.", "red2");
		scr_text("b careFul, halleway is very lOOONG, [tv freqUency radioWaves] are bad for brain!", "dustpile_thinking", -1);
			scr_text_color(0, 80, c_red, c_red, c_red, c_red);			
			scr_text_shake(0,80);
				global.seen_dusteye = true;
		break;
	}
	break;
	
	
case "green_poster":
	var r = irandom (1);
	switch (r){
		case 0:
		scr_text("A poster ad for something. It's very green.",);
		scr_text_color(36,42, c_green, c_green, c_green, c_green);
	break;

		case 1:
		scr_text("It looks like a green creature wearing a silly mask.",);
		scr_text_color(16,21, c_green, c_green, c_green, c_green);
	break;
	}
break;


case "clown_ads":
	scr_text("Flyers for an overnight sale event, there's masked clowns on them.");
	global.seen_clown_ads = true;
	show_debug_message(">> Viste el cartel de los payasos");
	break;
	
case "clown_ads - seen":
	global.seen_clown_ads = true;
	show_debug_message(">> FLAG activado: seen_clown_ads");
	break;

			
case "blue":
//variable created
	if (!variable_global_exists("seen_clown_ads")) {
	    global.seen_clown_ads = false;
	}
//flag is ON
	if (global.seen_clown_ads) {
		show_debug_message(">> FLAG detectada: seen_clown_ads = TRUE");
		scr_text("OH NO! YOU DON'T want to meddle with The Clowns!!", "blue-disgust", -1);
			scr_text_color(37,47, c_teal, c_teal, c_green, c_green);
			scr_text_shake(0,54);
		scr_text("Clowns?", "red-shocked2");
			scr_option("Why are clowns here?", "blue - clown danger");
//flag is OFF
	} else {
		show_debug_message(">> FLAG NO activada: seen_clown_ads = FALSE");
		scr_text("hi Red!!!", "blue-happy", -1);
		scr_text_color(3, 5, c_red, c_red, c_red, c_red);
		scr_text_shake(3, 9);
		scr_text("H-hi.", "red");
		scr_text("you went in there a long time huh", "blue", -1);
		scr_text("Um..","red-uncomfy3");
			scr_option("I'm fine.", "blue - fine");
	}
	break;
	
		//casos de dialogos
			case "blue - fine":
				scr_text("I'm feeling better... I guess.", "red");
				scr_text("you didn't look too good before girlie", "blue",-1);
				scr_text ("i'm glad you're feeling better now", "blue-happy", -1);
					break;
					
			case "blue - clown danger":
				scr_text("Do clowns usually live in subway stations?", "red-shocked");
				scr_text("no of course not, but they've found their way into it.", "blue-disgust", -1);
				scr_text("now their roaming free around the subway and i wish THEY were around to scare them off", "blue-disgust", -1);				
				scr_text("but whatevs i guess i dont really care about em hehe", "blue", -1);	
				break;
				
				
			case "hallway_balcony": 
			scr_text("You're looking out to the city below you.");
			scr_text("Yet you find yourself not knowing where you are.");
			scr_text("The white noise around you feels like fog in your brain.");
			break;
	}
		}