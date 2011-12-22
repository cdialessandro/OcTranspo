import mx.collections.ArrayCollection;
//i did some work
//test it out
//goto the page
//enter a number and
//select one

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
public var empty:ArrayCollection = new ArrayCollection();
[Bindable]
public var oempty:ArrayCollection = new ArrayCollection()
	
public function search(query:String):void
	{

		empty = new ArrayCollection()
		var a:String
		var b:int =0
		if (query.length == 0) 
		{
			empty = stops
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