import mx.collections.ArrayCollection;

/*import flash.events.GeolocationEvent;
import flash.sensors.Geolocation;

import mx.collections.ArrayCollection;

import spark.events.IndexChangeEvent;

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
public var new_data:ArrayCollection = sort_num(buses)
public var i:int



public function sort_num (a:ArrayCollection):ArrayCollection
{
	var hold:Object
	var j:int
	var i:int 
	
	for (i = 1; i < (a.length);i++)
	{
		j=i;
		while (j > 0 && a[j-1].num > a[j].num)
		{
			hold = a[j]
			a[j] = a[j-1]
			a[j-1] = hold						
			j--
		}	
	}
	return a;	
}
*/
[Bindable]
public var stops:ArrayCollection([
	{stop: 1148, buses: [114,95,96]},
	{stop: 4325, buses: [98,143]} 
	)]
public function stopclick():void
{
	
	
}