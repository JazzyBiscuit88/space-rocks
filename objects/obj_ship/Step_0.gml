/// @description Insert description here
// You can write your code in this editor
if 
(keyboard_check(vk_left))
{
	image_angle = image_angle + 5;
}

if (keyboard_check(vk_right))
{
image_angle = image_angle - 5;
}

if (keyboard_check(vk_up))
{
	audio_play_sound(snd_engine, 1, false);
motion_add(image_angle - 270, 0.05);
}

move_wrap(true, true, sprite_width / 2);

if (keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_shoot, 1, false);
var inst = instance_create_layer(x, y, "Instances", obj_bullet);
inst.direction = image_angle + 90;
}