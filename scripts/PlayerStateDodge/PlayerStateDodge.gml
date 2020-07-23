// Movement
hSpeed = lengthdir_x(speedDodge, direction);
vSpeed = lengthdir_y(speedDodge, direction);

moveDistanceRemaining = max(0, moveDistanceRemaining - speedDodge);
var _collided = PlayerCollision();

// Update Sprite
sprite_index = spriteDodge;
var _totalFrames = sprite_get_number(sprite_index) / 4;
image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceDodge)) * (_totalFrames)), _totalFrames - 1);

// Change State
if (moveDistanceRemaining <= 0)
{
	state = PlayerStateFree;
}