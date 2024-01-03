scr_input();

// sprite_index = Spr_Idle;

if (pressA or pressD) {
    state = archerStates.run;
} else if (pressW and jumpCounter < jumpMax) {
    moveY = -10;
    jumpCounter++;
} else if (pressSpace) {
    state = archerStates.attack;
}

moveX=0;    
