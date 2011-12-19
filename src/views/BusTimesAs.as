import flash.events.GeolocationEvent;
import flash.sensors.Geolocation;

import mx.collections.ArrayCollection;

import spark.events.IndexChangeEvent;

[Bindable]
public var home_data:ArrayCollection = new ArrayCollection([
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
public var new_data:ArrayCollection = sort(home_data)
public var i:int

public function search(query:String):void
{
	var hold:Object;
	new_data=new ArrayCollection();
	var a:int = 0
	
	for (i=0;i<home_data.length;i++)
	{
		var b:String = home_data[i].route
		if (query.length == 3)
		{
			
			if (query == b)
			{
				a=1		
				new_data.addItem(home_data[i])
			}
			
		}
		else if (query.length == 2)
		{
			if (query.charAt(0) == b.charAt(0))
			{
				if (query.charAt(1) == b.charAt(1))
				{
					new_data.addItem(home_data[i])
					
				}
			}
			
		}
		else if (query.length == 1)
		{
			if (query.charAt(0) == b.charAt(0))
			{
				new_data.addItem(home_data[i])
				
			}
		}
		else if (query.length == 0)
		{
			new_data = home_data
			break;
		}
		
	}
	
	new_data = sort (new_data);
	
}
public function sort (a:ArrayCollection):ArrayCollection
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
public var gps:Geolocation

