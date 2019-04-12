if (room == room_menu){
	var i=0;

	repeat (buttons) {
	
		draw_set_font(fnt_main);
		draw_set_halign(fa_center);
		draw_set_color(c_gray);
	
		if (menu_index == i) draw_set_color(c_red);
	
		draw_text(menu_x, menu_y + buttonh * i, button[i]);
		i++;
	}
}

else {
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_set_colour($000000 & $ffffff);

sala_actual = room;

amplada = 100;
alcada = 200;


if(sala_actual == room1) {
	draw_set_colour($000000 & $ffffff);
	draw_ellipse(1024/2 + alcada, 768/2+amplada, 1024/2 - alcada, 768/2-amplada, false);
	draw_set_colour($ffffff);
	draw_text(1024/2, 768/2, string("Caiguda quieta"));
	if (alarm[0] == -1) {
		alarm[0] = 120;	
	}
}

else {
	if(sala_actual == room2) {
		draw_set_colour($000000 & $ffffff);
		draw_ellipse(1024/2 + alcada, 768/2+amplada, 1024/2 - alcada, 768/2-amplada, false);
		draw_set_colour($ffffff);
		draw_text(1024/2, 768/2, string("Avancant retrocedint"));
		if (alarm[0] == -1) {
			alarm[0] = 120;	
		}
	}

	else {
		draw_text(0, 0, string(sala_actual) + "");
		instance_destroy();
	}
}
}