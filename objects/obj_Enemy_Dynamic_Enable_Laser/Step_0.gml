/// @description Insert description here
if (!variable_instance_exists(id, "spawned")) {
    tempox = x;  
    tempoy = y;  
    direction = 0;  
    velocity = 4;  
    variable_instance_set(id, "spawned", true);  
}
 

var squareSize = 120;  

var centerX = tempox + squareSize / 2;
var centerY = tempoy + squareSize / 2;


if (direction == 0) {
    x += velocity;  
    if (x >= centerX) {
        direction = 1;  
    }
} else if (direction == 1) {
    y += velocity;  
    if (y >= centerY) {
        direction = 2;  
    }
} else if (direction == 2) {
    x -= velocity;  
    if (x <= tempox) {
        direction = 3;  
    }
} else if (direction == 3) {
    y -= velocity;  
    if (y <= tempoy) {
        direction = 0; 
}
}



