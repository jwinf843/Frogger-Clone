/// Frog Mechanics

// Movement Input
if(!is_dead){
	script_movement()

	if(right){
		hsp = spd
		image_angle = 0
	}
	else if(left){
		hsp = -spd
		image_angle = 180
	}
	else if(up){
		vsp = -spd
		image_angle = 90
	}
	else if(down){
		vsp = spd
		image_angle = -90
	}
}
// Collision Detection
if(place_meeting(x + hsp, y, o_border)){hsp = 0}
if(place_meeting(x, y + vsp, o_border)){vsp = 0}

// Adding to Score
if(vsp != 0){o_controller.player_score -= (sign(vsp) * 10)}

// Apply Movement
x += hsp
y += vsp
hsp = 0
vsp = 0
