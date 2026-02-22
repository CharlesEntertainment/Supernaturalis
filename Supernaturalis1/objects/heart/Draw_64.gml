if (!instance_exists(oPlayer)) {
    exit;
}

var _width = sprite_get_width(Sprite9);
var _x_pos = 40;
var _y_pos = 60;
var _buffer = 5;

for (var i = 0; i < global.lifes; i++) {
    draw_sprite(Sprite9, 0, _x_pos + (i * (_width + _buffer)), _y_pos);
}
