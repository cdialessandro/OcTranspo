import mx.collections.ArrayCollection;

// ActionScript file
public class paul
{
	var buses:ArrayCollection = new ArrayCollection()
	var stops:ArrayCollection = new ArrayCollection()
	var stations:ArrayCollection = new ArrayCollection()
	var empty:ArrayCollection = new ArrayCollection()
			
	
	function add_bus(name:String,num:int,time:int):void
	{
		var obj:Object = new Object()
		obj.name = name;
		obj.num = num
		obj.time = time;
		buses.addItem(obj)
	}
	function add_stop(stop:int,buses:Array):void
	{
		var obj:Object = new Object()
		obj.stop = stop
		obj.buses = buses
		stops.addItem(obj)
	}		
	function get_bus(time:int,bus:int,stop:int):ArrayCollection
	{
		var arr:Array;
		var n_bus:int
		for (var i:int = 0; i < stops.length; i++)
		{
			if (stop == stops[i].stop)
			{
				for (var j:int =0; j < buses.length;j++)
				{
					if ( buses[i].num == bus)
					{
						if ( buses[i].time <= time)
						{
							empty.addItem(buses[i])
						}
					}
				}
			}
		}
		return empty;
	}
	
}