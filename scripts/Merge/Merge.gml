objectStorage = argument0
Low = argument1
Mid = argument2
High = argument3
Total = argument4

            
var Left = Low;
var Counter = Low;
var Right = Mid + 1;

var result

var Lobjx = objectStorage[Left,0];
var Lobjy = objectStorage[Right,1];

var Robjx = objectStorage[Left,0];
var Robjy = objectStorage[Right,1];

var LDistance = sqrt(sqr(Lobjx) + sqr(Lobjy));

var RDistance = sqrt(sqr(Robjx) + sqr(Robjy));


while(Left <= Mid && Right <= High)
{
    if (LDistance < RDistance)
    {
        result[Counter, 2] = objectStorage[Left, 2];
        Counter++;
        Left++;
    }
    else
    {
        result[Counter, 2] = objectStorage[Right, 2];
        Counter++;
        Right++;
    }
}
while(Left <= Mid)
{
    result[Counter, 2] = objectStorage[Left, 2];
    Counter++;
    Left++;
}
while(Right <= High)
{
    result[Counter, 2] = objectStorage[Right, 2];
    Counter++;
    Right++;
}
for (var i = Counter; i > 0; i--)
{
    objectStorage[i, 2] = result[i, 2];
}
return; //objectStorage;ssssssssssssssssssssssssssssssssssss

