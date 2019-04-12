/// @description Insert description here
// You can write your code in this editor

if stick
{
	persistent = true;
	solid = false;
	if place_meeting(x,y, obj_Personatge)
	{
		ID = instance_nearest(x,y,obj_Personatge);
		x = ID.x;
		y = ID.y;
	}
}
else
{
	persistent = false;
	solid = true;
	temps += 1/room_speed;
	if (gravetat > 0) velocitat[1] = velocitat[1] + 2*gravetat*temps;
	
	if (place_meeting(x+velocitat[0], y, obj_Terra))
	{
		while(!place_meeting(x+sign(velocitat[0]), y, obj_Terra))
		{
			x = x + sign(velocitat[0]);
		}
		velocitat[0] = 0;
	}
	if (place_meeting(x, y+velocitat[1], obj_Terra))
	{
		while(!place_meeting(x, y+ sign(velocitat[1]), obj_Terra))
		{
			y = y + sign(velocitat[1]);
		}
		velocitat[1] = 0;
		velocitat[0] = 0;
		temps = 0;
	}
	if (place_meeting(x+velocitat[0], y, obj_porta))
	{
		ID = instance_nearest(x,y,obj_porta);
		if (!ID.oberta)
		{
			while(!place_meeting(x+sign(velocitat[0]), y, obj_porta))
			{
				x = x + sign(velocitat[0]);
			}
			velocitat[0] = 0;
		}
	}

if (place_meeting(x, y+velocitat[1], obj_porta ))
{
	if (!ID.oberta)
	{
		while(!place_meeting(x, y+ sign(velocitat[1]), obj_porta))
		{
			y = y + sign(velocitat[1]);
		}
		velocitat[1] = 0;
		temps = 0;
	}
}
	if immovil 
	{
		velocitat[0] = 0;
		velocitat[1] = 0;
	}
		
		y = y + velocitat[1];
		x = x + velocitat[0];
		
		
		
}