/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y, obj_objecte)
{
	ID = instance_nearest(x,y,obj_objecte);
	if (ID.stick)
	{
		ID.stick = false;
		ID.persistent = false;
		ID = instance_nearest(x, y, obj_objecte);
		ID.velocitat[0] = velocitat[0];
		if ID.invertir
			ID.velocitat[0] = -velocitat[0];
		ID.velocitat[1] = velocitat[1];
		ID.temps = 0;
	}
	else
	{
		ID.stick = true;
		ID.persistent = true;
	}
}
