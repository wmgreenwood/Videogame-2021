function DrawSetText(halign, valign, font, color, x, y, string){
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_font(font);
	draw_set_color(color);
	draw_text(x, y, string);
}