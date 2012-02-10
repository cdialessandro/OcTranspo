package views
{
	import com.adobe.serialization.json.JSON;
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
// class for making a call to the server
// im testing this class in OcTranspoHomeView
// in the start function 

	public class Servercall
	{
		public var ready:Boolean
		public var obj:Object;
		public var arr:ArrayCollection
		
		//constructor
		public function Servercall():void
		{
			ready = false; // when results are ready
			obj = null; // store the results
			arr = null; // not used yet
			
		}
		//creates the call
		public function stop_call(stop:int):void
		{
			var call:HTTPService =  new HTTPService();
			var str:String = "http://ec2-184-73-46-4.compute-1.amazonaws.com:3000/stop/" + stop.toString()
			call.url = str;
			call.resultFormat = "text";
			call.addEventListener(ResultEvent.RESULT,result_object);
			call.send();
			
		}
		//event listner for httpservice
		private function result_object(e:ResultEvent):void
		{
			obj = JSON.decode(e.result as String)
				trace ('100');
				
			ready = true;			
		}
		// this function is where im having trouble
		//--------------------------------------------------------------------------------------------------------------------
		public function get_result():Object
		{
			//while (!ready) donothing;   --- i need some sort of altenative for this
			return obj;
		}
		//--------------------------------------------------------------------------------------------------------------------
		public function get_status():Boolean {return ready;trace (ready)} 
		
			
				
		
		
		
	}
}