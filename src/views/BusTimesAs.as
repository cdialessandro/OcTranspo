


import mx.collections.ArrayCollection;


[Bindable]
public var buses:ArrayCollection = new ArrayCollection([
	{route: "114", num: 114, time: "1:15" , times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "97" , num: 97, time: "1:03", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "118", num: 118, time: "1:43", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "146", num: 146 ,time: "2:15", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "87", num: 87 ,time:"5:40", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "1" , num: 1 ,time: "2:05", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "86", num: 86, time: "1:53", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "112", num: 112, time: "1:25", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
	{route: "144", num: 144, time: "1:55", times:["7:32","7:42", "8:02", "8:22", "8:45", "9:15", "9:45", "10:30", "11:15", "12:00", "12:45", "1:30", "2:15", "3:00", "3:30", "3:45", "4:00", "4:10", "4:20", "4:25", "4:30", "4:45", "5:00", "5:30", "5:45", "6:00", "6:45", "7:30", "8:15"]},
]);

[Bindable]
public var stops:ArrayCollection = new ArrayCollection([
	{number: 1248, busses: [114,118,87]},
	{number: 4321, busses: [144,1,86]},
	{number: 2421, busses: [112,86,97]},
	{number: 4663, busses: [97,118,146]},
	{number: 1727, busses: [114,87,116]},
	{number: 1642, busses: [112,86,118]},
	{number: 3832, busses: [114,144,1]},
	{number: 6432, busses: [118,98,86]}
	]);

public var favorites:Array = new Array (1248,2421,4663,1727);
[Bindable]
public var empty:ArrayCollection = sort(stops);
[Bindable]
public var oempty:ArrayCollection = new ArrayCollection();
	
public function search(query:String):void
	{

		empty = new ArrayCollection()
		var a:String
		var b:int =0
		if (query.length == 0) 
		{
			empty = sort(stops)
			return
		}
		for (var i:int=0; i < stops.length;i++)
		{
			a= stops[i].number.toString()
			b=0
			for (var j:int=0; j<query.length;j++)
			{
				if (query.charAt(j) == a.charAt(j)) 
					{
					 b++	
					}
			}
			if (b==query.length)
			{
				empty.addItem(stops[i])
			}
		}
		stops = sort(stops)
	}
public function sort (a:ArrayCollection):ArrayCollection
{
	var hold:Object
	var j:int
	var i:int 
	for (i = 1; i < (a.length);i++)
	{
		j=i;
		while (j > 0 && a[j-1].number > a[j].number)
		{
			hold = a[j]
			a[j] = a[j-1]
			a[j-1] = hold						
			j--
		}	
	}
	return a;	
}
public function get_bus_stop(obj:Object):ArrayCollection
{
	 
	var arr:Array = obj.busses
	oempty = new ArrayCollection()

	for (var i:int=0;i<arr.length;i++)
	{
		for (var j:int=0;j<buses.length;j++)
		{
			if (arr[i] == buses[j].num)
			{
				oempty.addItem(buses[j])
			}
		}
	}
	return oempty

}