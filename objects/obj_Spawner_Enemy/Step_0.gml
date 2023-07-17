/// @description 

var gridWidth = 8; // Number of enemies per row
var gridHeight = 5; // Number of enemy rows
var enemySpacingX = 200; // Spacing between enemies horizontally
var enemySpacingY = 100; // Spacing between enemies vertically
var spawnEnemies = true;








var startX = (room_width - (gridWidth - 1) * enemySpacingX) / 2; // Starting X position for the grid
var startY = 100; 
if (!instance_exists(obj_Enemy)) {
   
    for (var row = 0; row < gridHeight; row++) {
        for (var col = 0; col < gridWidth; col++) {
            var xPos = startX + col * enemySpacingX;
            var yPos = startY + row * enemySpacingY;
if (room == rm_phase_1 || room == rm_Main) {
    var enemyType = obj_Enemy_Static_Disable_laser;
}
else if (room == rm_phase_2) {
    var enemyType = choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Static_Enable_Laser);
    if (instance_number(obj_Enemy_Static_Disable_laser) >= 20) {
        enemyType = obj_Enemy_Static_Enable_Laser;
    }
    if (instance_number(obj_Enemy_Static_Enable_Laser) >= 20) {
        enemyType = obj_Enemy_Static_Disable_laser;
    }
}
else if (room == rm_phase_3) {
	var enemyType=choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Static_Enable_Laser, obj_Enemy_Dynamic_Disable_Laser);
    if (instance_number(obj_Enemy_Static_Disable_laser) >= 13 && enemyType==obj_Enemy_Static_Disable_laser) {
        var enemyType = choose( obj_Enemy_Static_Enable_Laser, obj_Enemy_Dynamic_Disable_Laser);
    }
    else if (instance_number(obj_Enemy_Static_Enable_Laser) >= 13 && enemyType==obj_Enemy_Static_Enable_Laser) {
		
        var enemyType = choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Dynamic_Disable_Laser);
    }
    else if(instance_number(obj_Enemy_Dynamic_Disable_Laser) >= 14 && enemyType==obj_Enemy_Dynamic_Enable_Laser) {
        var enemyType = choose( obj_Enemy_Static_Enable_Laser,obj_Enemy_Static_Disable_laser);
    }
	
}
else if (room == rm_phase_4) {
	var enemyType=choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Static_Enable_Laser, obj_Enemy_Dynamic_Disable_Laser,obj_Enemy_Dynamic_Enable_Laser);
    if (instance_number(obj_Enemy_Static_Disable_laser) >= 10 && enemyType==obj_Enemy_Static_Disable_laser) {
        var enemyType = choose( obj_Enemy_Static_Enable_Laser, obj_Enemy_Dynamic_Disable_Laser,obj_Enemy_Dynamic_Enable_Laser);
    }
    else if (instance_number(obj_Enemy_Static_Enable_Laser) >= 10 && enemyType==obj_Enemy_Static_Enable_Laser) {
        var enemyType = choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Dynamic_Enable_Laser,obj_Enemy_Dynamic_Disable_Laser);
    }
    else if (instance_number(obj_Enemy_Dynamic_Enable_Laser) >= 10 && enemyType==obj_Enemy_Dynamic_Enable_Laser){
        var enemyType = choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Dynamic_Disable_Laser, obj_Enemy_Static_Enable_Laser);
    }
	else if (instance_number(obj_Enemy_Dynamic_Disable_Laser) >= 10 && enemyType==obj_Enemy_Dynamic_Disable_Laser)
	{ 
		var enemyType=choose(obj_Enemy_Static_Disable_laser, obj_Enemy_Static_Enable_Laser, obj_Enemy_Dynamic_Disable_Laser);
    }
}
            // Spawn the enemy at the calculated position
            instance_create_layer(xPos, yPos, "Enemies", enemyType);

            // Check if the last row of enemies is reached
            if (row == gridHeight - 1 && col == gridWidth - 1) {
                spawnEnemies = false;
                break;
            }
        }

        if (!spawnEnemies) {
            break;
        }
    }
}










