/// @desc nineSliceBox(sprite, x1, y1, x2, y2, imageIndex);
/// @arg sprite
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg imageIndex
function NineSliceBox(argument0, argument1, argument2, argument3, argument4, argument5) {

	var _size = sprite_get_width(argument0) / 3;
	var _x1 = argument1;
	var _y1 = argument2;
	var _x2 = argument3;
	var _y2 = argument4;
	var _index = argument5;
	var _wid = _x2 - _x1;
	var _height = _y2 - _y1;

	//MIDDLE
	draw_sprite_part_ext(argument0, _index, _size, _size, 1, 1, _x1+_size, _y1+_size, _wid-(_size*2), _height-(_size*2), c_white, 1);

	//CORNERS
	//top left
	draw_sprite_part(argument0, _index, 0, 0, _size, _size, _x1, _y1);
	//top right
	draw_sprite_part(argument0, _index, _size*2, 0, _size, _size, _x1+_wid-_size, _y1);
	//bottom left
	draw_sprite_part(argument0, _index, 0, _size*2, _size, _size, _x1, _y1+_height-_size);
	//bottom right
	draw_sprite_part(argument0, _index, _size*2, _size*2, _size, _size, _x1+_wid-_size, _y1+_height-_size);

	//EDGES
	//left edge
	draw_sprite_part_ext(argument0, _index, 0, _size, _size, 1, _x1, _y1+_size, 1, _height-(_size*2), c_white, 1);
	//right edge
	draw_sprite_part_ext(argument0, _index, _size*2, _size, _size, 1, _x1+_wid-_size, _y1+_size, 1, _height-(_size*2), c_white, 1);
	//top edge
	draw_sprite_part_ext(argument0, _index, _size, 0, 1, _size, _x1+_size, _y1, _wid-(_size*2), 1, c_white, 1);
	//bottom edge
	draw_sprite_part_ext(argument0, _index, _size, _size*2, 1, _size, _x1+_size, _y1+_height-(_size), _wid-(_size*2), 1, c_white, 1);
}