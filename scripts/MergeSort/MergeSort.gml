objectStorage = argument0
Low = argument1
High = argument2
Total = argument3


Mid = (Low + High) / 2;

if (Low < High)
{
	MergeSort(objectStorage, Low, Mid, Total);
	MergeSort(objectStorage, Mid + 1, High, Total);
	Merge(objectStorage, Low, Mid, High, Total);
}
return;



