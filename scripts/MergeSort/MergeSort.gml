objectStorage = argument0
Low = argument1
High = argument2
Total = argument3
Mid = floor((Low + High) / 2);
Low = floor(Low);
High = floor(High);
Total = floor(Total);
if (Low < High)
{
	MergeSort(objectStorage, Low, Mid, Total);
	MergeSort(objectStorage, Mid + 1, High, Total);
	Merge(objectStorage, Low, Mid, High, Total);
}
return argument0;

