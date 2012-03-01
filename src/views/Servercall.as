package views
{
	import com.adobe.fiber.core.model_public;
	import com.adobe.serialization.json.JSON;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	public  class Servercall
	{
		public var call:HTTPService =  new HTTPService();
		public function Servercall():void {	call = new HTTPService();}
	
		public function stop_call(stop:int,func:Function):void
		{
			var str:String = "http://ec2-184-73-46-4.compute-1.amazonaws.com:3000/stop/" + stop.toString();
			call.url = str;
			call.addEventListener(ResultEvent.RESULT,func)
			call.send();
		}
		public function nearby_stops(lat:Number,lon:Number,range:int,max_results:int,func:Function):void
		{
			call.url = "http://ec2-184-73-46-4.compute-1.amazonaws.com:3000/stops/nearest";
			call.request.latitude = lat.toString();
			call.request.longitude = lon.toString();
			call.request.range = range.toString();
			call.request.max_results = max_results.toString();
			call.addEventListener(ResultEvent.RESULT,func);
			call.send();
		}
		public function starts_with(query:int,func:Function):void
		{
			call.url = "http://ec2-184-73-46-4.compute-1.amazonaws.com:3000/stops";
			call.request.startswith = query;
			call.addEventListener(ResultEvent.RESULT,func);
			call.send();
		}
		public function trips_by_stop(stop:int,func:Function):void
		{
			var str:String = "http://ec2-184-73-46-4.compute-1.amazonaws.com:3000/trips/by_stop/" + stop.toString();
			call.url = str;
			call.addEventListener(ResultEvent.RESULT,func);
			call.send();
		}
	}
}