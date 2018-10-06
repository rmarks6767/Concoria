/// @description Insert description here
// You can write your code in this editor
if (string_length(keyboard_string) <= charLimit)
{
	ipAddress = keyboard_string;
}
else
{
	keyboard_string = ipAddress;
}
if (string_length(keyboard_string) == 3 || string_length(keyboard_string) == 6 || string_length(keyboard_string) == 9 )
{
	keyboard_string = keyboard_string //+ ".";
}


