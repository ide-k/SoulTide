// Update the Sprite
// for 8 directions, use round(direction / 45);
var _cardinalDirection = round(direction / 90);
var _totalFrames = sprite_get_number(sprite_index) / 4;
image_index = localFrame + (CARDINAL_DIR * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

// Animation Loop
if(localFrame >= _totalFrames)
{
	animationEnd = true;
	localFrame -= _totalFrames;
} else { animationEnd = false; }