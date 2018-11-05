
if (checked == false) {
	HouseLength(self, instanceNumber, groupid, doorinst, x1, x2, y1, y2);
	checked = true;
}
if (player.x > x1 and player.x < x2 and player.y > y1 and player.y < y2)
{
	HouseFadeIn();
}
else
{
	HouseFadeOut();	 
}