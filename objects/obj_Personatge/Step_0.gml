/// @description Insert description here
// You can write your code in this editor


esquerra = keyboard_check(vk_left);
dreta = keyboard_check(vk_right);

velocitat[0] = (dreta - esquerra) * vel;

temps += 1/room_speed;
velocitat[1] = (velocitat[1] + 2 * gravetat * temps);


if (place_meeting(x, y+velocitat[1], obj_Terra ))
{
	while(!place_meeting(x, y+ sign(velocitat[1]), obj_Terra))
	{
		y = y + sign(velocitat[1]);
	}
	velocitat[1] = 0;
	temps = 0;
	saltat = 2;
}

if (place_meeting(x+velocitat[0], y, obj_Terra))
{
	while(!place_meeting(x+sign(velocitat[0]), y, obj_Terra))
	{
		x = x + sign(velocitat[0]);
	}
	velocitat[0] = 0;
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
	ID = instance_nearest(x,y,obj_porta);
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

if (place_meeting(x, y+velocitat[1], obj_objecte ) && velocitat[1] > 0)
{
	ID = instance_nearest(x,y,obj_objecte);
	saltat = 2;
	if (!ID.stick)
	{
		while(!place_meeting(x, y+ sign(velocitat[1]), obj_objecte))
		{
			y = y + sign(velocitat[1]);
		}
		velocitat[1] = 0;
		temps = 0;
		
	}
}

	x = x + velocitat[0];
	y = y + velocitat[1];


	
	
