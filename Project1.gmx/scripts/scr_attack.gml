scr_input();

// sprite_index = Spr_Attack;
image_speed = 1;

attackCounter += 1;
if (attackCounter == 6) {
    if (image_xscale > 0) {
        instance_create(o_archer_1.x + 7, o_archer_1.y -30, o_deal_dmg);
    }
    if (image_xscale < 0) {
        instance_create(o_archer_1.x -35, o_archer_1.y -30, o_deal_dmg);
    }
    attackCounter = 0;
    state = archerStates.idle;
}
