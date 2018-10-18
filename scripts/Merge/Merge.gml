objectStorage = argument0
Low = argument1
Mid = argument2
High = argument3
Total = argument4
       
var Left = floor(Low);
var Counter = floor(Low);
var Right = floor(Mid + 1);
while(Left <= Mid and Right <= High)
{
    if (objectStorage[Left, 3] < objectStorage[Right, 3])
    {
        result[Counter, 0] = objectStorage[Left, 0];
		result[Counter, 1] = objectStorage[Left, 1];
		result[Counter, 2] = objectStorage[Left, 2];
		result[Counter, 3] = objectStorage[Left, 3];
        Counter++;
        Left++;
    }
    else
    {
        result[Counter, 0] = objectStorage[Right, 0];
		result[Counter, 1] = objectStorage[Right, 1];
		result[Counter, 2] = objectStorage[Right, 2];
		result[Counter, 3] = objectStorage[Right, 3];
        Counter++;
        Right++;
    }
}
while(Left <= Mid)
{
    result[Counter, 0] = objectStorage[Left, 0];
	result[Counter, 1] = objectStorage[Left, 1];
	result[Counter, 2] = objectStorage[Left, 2];
	result[Counter, 3] = objectStorage[Left, 3];
    Counter++;
    Left++;
}
while(Right <= High)
{
    result[Counter, 0] = objectStorage[Right, 0];
	result[Counter, 1] = objectStorage[Right, 1];
	result[Counter, 2] = objectStorage[Right, 2];
	result[Counter, 3] = objectStorage[Right, 3];
    Counter++;
    Right++;
}
for (l = Low; l < Counter; l++)
{
    objectStorage[l, 0] = result[l, 0];
	objectStorage[l, 1] = result[l, 1];
	objectStorage[l, 2] = result[l, 2];
	objectStorage[l, 3] = result[l, 3];
}
return argument0;

