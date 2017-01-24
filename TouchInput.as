package  {
	
	import flash.display.MovieClip;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TouchEvent;
	//import flash.text.TextField;
	
	
	
	public class TouchInput extends MovieClip {
		
		Multitouch.inputMode=MultitouchInputMode.TOUCH_POINT;
		

	

		public function TouchInput() {
			// constructor code
			//trace("I'm here");
			
			
			name="touch";
			width=Storage.Width;
			height=Storage.Height;
			Init();
		}
		
		
		
		function Init(){
			
			
		
						
			addEventListener(TouchEvent.TOUCH_BEGIN,tapBegin);
			addEventListener(TouchEvent.TOUCH_OUT,tapOut);
			addEventListener(TouchEvent.TOUCH_TAP,Tap);
			
			
	//myTextField.text = "ready!"; 
    //myTextField.x = -20;
    //addChild(myTextField); 
			
	
			
		
		}
		
function Tap(evt:TouchEvent):void{
	
	
Game(parent).Input();
	
	
}


function tapBegin(evt:TouchEvent): void { 
	
	
Game(parent).Input();
	
	
}		

function tapOut(evt:TouchEvent){


	
	
}







		
		
		
		
		
	}
	
}
