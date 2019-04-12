/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y+10, obj_Personatge) || place_meeting(x, y+10, obj_objecte))
{
	activat = true;
}
else
{
	if (alarm[0] == -1) alarm[0] = timer;	
}

if (activat) 
{
	sprite_index = spr_boto_apretat;
	with  obj_porta 
	{
		oberta = true;
	}
}
else 
{
	sprite_index = spr_boto_normal;
	with  obj_porta 
	{
		oberta = false;
	}
}
