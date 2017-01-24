package  {
	
	import flash.display.MovieClip;
	
	
	public class Player extends MovieClip {
		
		
		public function Player() {
			// constructor code
			y=-25;
		}
		var jump:Boolean=false;
		//var allowJump:Boolean;
		var ySpeed:int=0;
		function Run(){
			JumpMovement();
			
			if(willJump){
			if(PressToJumpTimer>0){
				PressToJumpTimer--;
			}else{
				willJump=false;
				
			}
			}
		}
		
		
		//--game can try to make player to jump
		function CheckIfLanded(){
			
			if(jump){
				ySpeed=40;
				jump=false;
			}
		}
		var willJump:Boolean=false;
		var PressToJumpTimer:int=0;
		function WantToJump(){
			
			willJump=true;
		
			PressToJumpTimer=5;
			
		}
		
		
		var jumpRot:int=1;
		function JumpMovement(){
			//improve that!!
			if(willJump){
				CheckIfLanded();
			}
			
			if(!jump){
				//scaleY=1+(ySpeed)/100;
				rotation+=(23*jumpRot);
				
				ySpeed-=5;
				y-=ySpeed;
			if(y>-25)y=-25,jump=true,rotation=0,jumpRot= -1+int(Math.random()*3);
			}
			
				
				
				
				
				
			
		}
		
		
	}
	
}
