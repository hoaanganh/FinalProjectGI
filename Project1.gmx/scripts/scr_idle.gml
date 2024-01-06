scr_input();

sprite_index = s_archer_idle1;

if (pressA or pressD) {
    state = archerStates.run;
} else if (pressW and jumpCounter < jumpMax) {
    moveY = -10;
    jumpCounter++;
} else if (pressSpace) {
    state = archerStates.attack;
}

moveX=0;    
