/// @description Insert description here
// You can write your code in this editor
boss3_counter ++;
if((boss3_counter mod 8)==0){
	c = irandom(2)
	attack3_side(c)
	alarm[1] = 75
	

}else{
	boss3_random = irandom(2)
	if (boss3_random == 0){
		b = irandom(12)
		attack3_normal(b)
		alarm[1] = 55
	}else if (boss3_random == 1){
		b = irandom(12)
		attack3_normal(b)
		b1 = irandom(12)
		attack3_normal(b1)
		alarm[1] = 55
	}else{
		b = irandom(12)
		attack3_normal(b)
		b1 = irandom(12)
		attack3_normal(b1)
		b2 = irandom(12)
		attack3_normal(b2)
		alarm[1] = 55
	}
}


//boss3_random = irandom(2)
//if (boss3_random == 0){
//	b = irandom(12)
//	attack3_normal(b)
//	alarm[1] = 45
//}else if (boss3_random == 1){
//	b = irandom(12)
//	attack3_normal(b)
//	b1 = irandom(12)
//	attack3_normal(b1)
//	alarm[1] = 45
//}else{
//	b = irandom(12)
//	attack3_normal(b)
//	b1 = irandom(12)
//	attack3_normal(b1)
//	b2 = irandom(12)
//	attack3_normal(b2)
//	alarm[1] = 45
//}
