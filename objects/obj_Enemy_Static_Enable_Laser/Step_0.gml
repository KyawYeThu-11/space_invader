/// @description 

// Inherit the parent event
event_inherited();
/// Step Event of Enemy Objects ///

var moveSpeed = 3; // Adjust this value to control the movement speed of enemies

// Check for collisions with other enemies
var collision = instance_place(x, y, obj_Enemy);

if (collision != noone) {
    // Determine the direction to move away from the collided enemy
    var moveDirection = point_direction(x, y, collision.x, collision.y);
    
    // Calculate the new position to move away from the collided enemy
    var newX = x + lengthdir_x(moveSpeed, moveDirection);
    var newY = y + lengthdir_y(moveSpeed, moveDirection);
    
    // Check if the new position is still colliding with another enemy
    if (!instance_place(newX, newY, obj_Enemy)) {
        // Move away from the collided enemy
        x = newX;
        y = newY;
    }
}
