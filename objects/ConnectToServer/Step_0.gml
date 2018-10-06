with (inputAddress)
{
	if (global.ipAddress != "Click")
	{
		ipGood = true
	}
}
with (inputPort)
{
	if (global.port != "Click")
	{
		portGood = true;
	}
}

if (ipGood == true && portGood == true)
{
	object_set_visible(objConnect, true);	
}
else
{
	object_set_visible(objConnect, false);
}