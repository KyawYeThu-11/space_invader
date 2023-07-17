/// @description Insert description here
// You can write your code in this editor
effect_create_above(ef_firework, x, y, random_range(0.5, 2), c_red)
audio_play_sound(boss2_got_hit, 0, false, 1, 0, random_range(0.8, 1.2))
instance_destroy();
obj_boss2.boss2_hp -= 200;
if (obj_boss2.boss2_hp <= 0){
  obj_boss2.boss2_can_shoot = false;
  instance_destroy(obj_boss2_hp);
  instance_destroy(obj_boss2);
  //instance_destroy(obj_boss2_canon);
  //instance_destroy(obj_boss2_laser);
  layer_destroy_instances("Instances_2");
  layer_destroy_instances("Bullets");
  effect_create_above(ef_firework, x, y, 1000, c_purple)
  instance_destroy(other);
  layer_set_visible("Effect_Transition_Pixelate", 1);
  global.score+=2000;
  the_phase_transition = instance_create_layer(0, 0, "Phase_transition", obj_transition_phase_ending);
}