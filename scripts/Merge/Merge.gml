objectStorage = argument0
Low = argument1
Mid = argument2
High = argument3
Total = argument4

var high = floor(High);
var mid = floor(Mid);       
var Left = floor(Low);
var Counter = floor(Low);
var Right = floor(Mid + 1);

while(Left <= Mid and Right <= High)
{
    if (argument0[Left, 3] < argument0[Right, 3])
    {
        result[Counter, 0] = argument0[Left, 0];
		result[Counter, 1] = argument0[Left, 1];
		result[Counter, 2] = argument0[Left, 2];
		result[Counter, 3] = argument0[Left, 3];
        Counter++;
        Left++;
    }
    else
    {
        result[Counter, 0] = argument0[Right, 0];
		result[Counter, 1] = argument0[Right, 1];
		result[Counter, 2] = argument0[Right, 2];
		result[Counter, 3] = argument0[Right, 3];
        Counter++;
        Right++;
    }
}
while(Left <= mid)
{
    result[Counter, 0] = argument0[Left, 0];
	result[Counter, 1] = argument0[Left, 1];
	result[Counter, 2] = argument0[Left, 2];
	result[Counter, 3] = argument0[Left, 3];
    Counter++;
    Left++;
}
while(Right <= high)
{
    result[Counter, 0] = argument0[Right, 0];
	result[Counter, 1] = argument0[Right, 1];
	result[Counter, 2] = argument0[Right, 2];
	result[Counter, 3] = argument0[Right, 3];
    Counter++;
    Right++;
}
for (l = Low; l < Counter; l++)
{
    argument0[l, 0] = result[l, 0];
	argument0[l, 1] = result[l, 1];
	argument0[l, 2] = result[l, 2];
	argument0[l, 3] = result[l, 3];
}
return argument0;