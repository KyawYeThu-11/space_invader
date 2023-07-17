damage(other.damage);
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

if !instance_exists(obj_Enemy){
	if room == rm_phase_1 { 
		layer_set_visible("Effect_Transition_Pixelate", 1);
		the_ending_transition = instance_create_layer(0, 0, "Phase_transition", obj_transition_phase_ending);
	}
	else {
		instance_destroy(obj_Spawner_Enemy);
		layer_destroy_instances("Enemies");
		
		the_boss_coming_out = instance_create_layer(0, 0, "Phase_transition", obj_transition_boss_coming);
		
	}
}

