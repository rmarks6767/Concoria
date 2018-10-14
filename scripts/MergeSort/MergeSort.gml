objectStorage = argument0
Low = argument1
High = argument2
Total = argument3

var mid = floor((Low + High) / 2);
var low = floor(Low);
var high = floor(High);
var total = floor(Total);

if (low < high)
{
	MergeSort(objectStorage, low, mid, total);
	MergeSort(objectStorage, mid + 1, high, total);
	
	argument0 = Merge(objectStorage, low, mid, high, total);
}
return argument0;