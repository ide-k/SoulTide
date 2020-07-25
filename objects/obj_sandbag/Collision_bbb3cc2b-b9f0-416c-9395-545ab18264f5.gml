/// @description Insert description here
// You can write your code in this editor
temp_dust = instance_create_depth(other.x, other.y, -2, obj_dust);
instance_destroy(other);
hp_current -= other.bullet_damage;
hit_start = 1;
hit_timer = 0;

if (hp_current <= 0) {
	temp_dust = instance_create_depth(x, y, -5, obj_dust);
	temp_dust.image_xscale = 3;
	temp_dust.image_yscale = 3;
	instance_destroy(self);
}