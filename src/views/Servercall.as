package views
{
	import com.adobe.serialization.json.JSON;
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

	public class Servercall
	{
		public var ready:Boolean
		public var obj:Object;
		public var arr:ArrayCollection
		
		public function Servercall():void
		{
			ready = false;
			obj = null;
			arr = null;
		}
		
		public function stop_call(stop:int):void
		{
			var call:HTTPService =  new HTTPService();
			var str:String = "http://ec2-184-73-46-4.compute-1.amazonaws.com:3000/stop/" + stop.toString()
			call.url = str;
			call.resultFormat = "text";
			call.addEventListener(ResultEvent.RESULT,result_object);
			call.send();
			
		}
		
		private function result_object(e:ResultEvent):void
		{
			obj = JSON.decode(e.result as String)
				trace ('100');
				
			ready = true;			
		}
		
		public function get_result():Object
		{
			//while (!ready) donothing;   --- i need some sort of altenative for this
			return obj;
		}
		public function get_status():Boolean {return ready;trace (ready)}
		
			
				
		
		
		
	}
}