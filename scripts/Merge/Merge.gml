objectStorage = argument0
Low = argument1
Mid = argument2
High = argument3
Total = argument4

            
Left = Low;
Counter = Low;
Right = Mid + 1;


Lobjx = objectStorage[Left,0];
Lobjy = objectStorage[Right,1];

Robjx = objectStorage[Left,0];
Robjy = objectStorage[Right,1];

LDistance = sqrt(sqr(Lobjx) + sqr(Lobjy));

RDistance = sqrt(sqr(Robjx) + sqr(Robjy));


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
for (l = Low; l < Counter; l++)
{
    objectStorage[l, 2] = result[l, 2];
}
return;