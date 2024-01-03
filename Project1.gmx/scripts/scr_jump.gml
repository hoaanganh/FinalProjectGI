scr_input();

// sprite_index = Spr_Jump;

//IDLE WHEN COLLSION WITH THE GROUND
if (place_meeting(x, y + moveY, o_ground)) {
    repeat (abs(moveY)) {
        if (not place_meeting(x, y+ sign(moveY), o_ground)) {
            y += sign(moveY)
        }
        break;
    }
    state = archerStates.idle
}

if (pressSpace) {
    state = archerStates.attack
}

if (pressD) {
    moveX = spd-1;
    if (pressSpace) {
        state = archerStates.attack
    }
}

if (pressA) {
    moveX = -(spd - 1)
    if (pressSpace) {
        state = archerStates.attack
    }
}
