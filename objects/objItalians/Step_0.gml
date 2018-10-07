// Inherit the parent event
event_inherited();


if (enemy_health < 20)
{
	thestate = state.lowHealth;	
}
if ((abs(x - player.x)) < 50 && (abs(y - player.y)) < 50 && playerFriendly == false)
{
	thestate = state.attacking;
}



