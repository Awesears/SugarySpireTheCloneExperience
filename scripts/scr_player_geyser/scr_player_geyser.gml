function state_player_geyser()
{
	if !flying
	{
    image_speed = 0.35;
    move = key_left + key_right;
    hsp = move * 5;
    
    if (move != 0)
        xscale = move;
    
    vsp = approach(vsp, -18, 1);
    sprite_index = spr_player_PZ_geyser;
    
    if (scr_solid(x, y + vsp) && vsp < 0 && !place_meeting(x, y + vsp, obj_destructibles))
        vsp = 5 + round(-vsp / 10);
    
    if (!place_meeting(x, y, obj_geyservertical))
    {
        jumpStop = true;
        state = States.jump;
        movespeed = abs(hsp);
        vsp = -18;
	}
    }
	else
	{
	var airtime = 0
	airtime++
	    image_speed = 0.35;
    move = key_left + key_right;
    hsp = move * 14;
    
    if (move != 0)
        xscale = move;
    
    vsp = approach(vsp, -5, 1);
    sprite_index = spr_player_PZ_geyser;
    
    if (scr_solid(x, y + vsp) && vsp < 0 && !place_meeting(x, y + vsp, obj_destructibles)) && global.character != "Blizzelle"
        vsp = 14 + round(-vsp / 10);
	
	if key_up
	vsp = -7
    if key_down
	vsp = 7
    if key_slap2 or key_attack && airtime > 30
	{
	state = States.mach3
	sprite_index = spr_player_PZ_walk_breakdance
	}
	if grounded && global.character != "Blizzelle"
	{
	state = States.mach3
	sprite_index = spr_player_PZ_mach3
	}
	}
}

