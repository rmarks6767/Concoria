//Set Drawm Mode
NPCGetDrawMode();
face_direction = direction;

switch(thestate)
{
	case state.stationary:
		Stationary();
		break;
		
	case state.wandering:
		if !alarm[0]{
			Wander();
			alarm[0] = irandom_range(20,50);
		}
		break;
		
	case state.attack:
		Attacking();
		break;
		
	case state.dying:
		Dying();
		break;
		
	case state.fleeing:
		Fleeing();
		break;
		
	case state.townDwelling:
		TownDwelling();
		break;
		
	case state.lowHealth:
		LowHealth();
		break;
		
	case state.exploring:
		Exploring();
		break;
		
	case state.goingHome:
		GoingHome();
		break;
		
	case state.blocking:
		break;
}
if Health <= 0{
		
		instance_destroy(self.arm);
		instance_destroy(self);
		
}
CheckCollisions();
with(arm){
	ArmControl()
}
Animate();