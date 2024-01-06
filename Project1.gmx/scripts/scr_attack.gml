scr_input();

sprite_index = s_archer_attack1;
image_speed = 1;

attackCounter += 1;
if (attackCounter == 9) {
    if (image_xscale > 0) {
        obj = instance_create(o_archer_1.x, o_archer_1.y -20, o_deal_dmg);
        obj.direction = 0
        obj.speed = 10
    }
    if (image_xscale < 0) {
        obj = instance_create(o_archer_1.x, o_archer_1.y -20, o_deal_dmg);
        obj.direction = 180
        obj.speed = 10
        obj.image_xscale = -1
    }
    attackCounter = 0;
    state = archerStates.idle;
}
