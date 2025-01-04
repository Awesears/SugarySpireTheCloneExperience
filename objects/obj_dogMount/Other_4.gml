if room == cafe_3
{
instance_destroy()
with instance_create_depth(x, y, 1, obj_baddieDead)
sprite_index = spr_dogMount_kick
}

if (obj_parent_player.state == States.doughmount || obj_parent_player.state == States.doughmountspin)
    instance_destroy();

