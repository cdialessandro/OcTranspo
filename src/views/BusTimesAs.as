
import mx.collections.ArrayCollection;


[Bindable]
public var buses:ArrayCollection = new ArrayCollection([
	{route: "114", num: 114, time: "1:00 - 8:00"},
	{route: "97" , num: 97, time: "2:00 - 8:00" },
	{route: "118", num: 118, time: "3:00 - 8:00"},
	{route: "146", num: 146 ,time: "4:00 - 8:00"},
	{route: "87", num: 87 ,time:"5:00 - 8:00"},
	{route: "1" , num: 1 ,time: "6:00 - 8:00"},
	{route: "86", num: 86, time: "7:00 - 8:00"},
	{route: "112", num: 112, time: "1:00 - 8:00"},
	{route: "144", num: 144, time: "2:00 - 8:00"},
	
]);
public var stops:ArrayCollection = new ArrayCollection([
	{number: 1248, busses: [114,118,87]},
	{number: 4321, busses: [144,1,86]},
	{number: 2421, busses: [112,86,97]},
	{number: 4663, busses: [97,118,146]},
	{number: 1727, busses: [114,87,116]},
	{number: 1642, busses: [112,86,118]},
	{number: 3832, busses: [114,144,1]},
	{number: 6432, busses: [118,98,86]}
	])
public var favorites:Array = new Array (1248,2421,4663,1727)
public function search():void
	{
		//if anyone is gunna do work
		//do this function just create a new array and
		//add all the things that match the criteria in the new array
		//and make it the data provider
		//go to github and look at the history of this file
		//to see how i did it before
	}