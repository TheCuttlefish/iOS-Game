package  {
	
	import flash.display.MovieClip;
	
	
	public class Spike extends MovieClip {
		
		
		public function Spike() {
			//trace("spaaik")
			x=2000;
			// constructor code
		}
		
		function Run(){
			
			if(!alive)return;// do things when alive
			
			
			//OutOfBoundires();
			if(alive){
			x-=10;
			OnTouch();
			}
			//rotation+=5;
		}
		
		
		function OutOfBoundires(){
			if(x<-(Storage.halfWidth+100))Destroy();
			
		}
		
		
		var alive:Boolean=true;
		function Destroy(){
			alive=false;
			parent.removeChild(this);
			
		}
		
		
		function Hypo(obj1,obj2):Number {
			var dx:Number = obj1.x-obj2.x;
			var dy:Number = obj1.y-obj2.y;
			return Math.sqrt(dx * dx + dy * dy);
		}
		
		var isBehind:Boolean;
		
		function OnTouch(){
			if(!isBehind){
			if(x<0)Map(parent).AddScore(),isBehind=true;
			}
		
			
		//	Game(Map(parent).parent).scoreText =String("asda");
			
			if(x<-50&&x>50)return;
			//Game(parent).player
			if(Hypo(this,Map(parent).player)<38){//35
				//Map(parent).player.alpha=.5;
				Map(parent).Death();
			}
		}
		
		
	}
	
}
