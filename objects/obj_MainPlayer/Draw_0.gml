/// @description Repositioning Player's sprite
draw_sprite_ext(spr_PlayerShadow, image_index, x - 5*Facing, y + DisplacementY + 30, Facing, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y + DisplacementY, Facing, image_yscale, image_angle, image_blend, image_alpha);