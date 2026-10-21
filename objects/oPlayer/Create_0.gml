//speed of x and y axis
xspd = 0;
yspd = 0;

//boolean variable for input
can_move = true ;

//movement speed and run speed
move_spd = 1;
base_spd = move_spd;
run_multiplier = 2;
//boolean variable for run
running = false;

//setting macros for sprites
sprite[RIGHT] = sprRed_WalkRight;
sprite[UP] = sprRed_WalkUp;
sprite[LEFT] = sprRed_WalkLeft;
sprite[DOWN] = sprRed_WalkDown;

//setting the idle sprite face
face = DOWN;

spr_sleeping = sprRSleeping;
spr_waking = sprRWakingUp;