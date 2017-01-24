package  {
	
	public class Storage {
		
		
		import flash.net.SharedObject;
		
		
		public function Storage() {
			// constructor code
		}
		//---SAVE FILES
		static var saveDataObj:SharedObject;
		saveDataObj = SharedObject.getLocal("savedFiles");
		//
		
		
		
		if(saveDataObj.data.highScore==null){
		saveDataObj.data.highScore = 0;
		}
		
		
		//save files happens here
		saveDataObj.flush();
		
		
		//Screen
		public static var Width:int=600;
		public static var Height:int=450;
		public static var halfWidth:int=300;
		public static var halfHeight:int=225;
	}
	
}
