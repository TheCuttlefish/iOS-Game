package  {
	
	import flash.display.MovieClip;
	
	
	public class Main extends MovieClip {
		
		
		public function Main() {
			// constructor code
			
			
				StartGame();
			
		}
		
		
		function AdjustScreen(){
			
		//here will be code finding stuff for IOS 
			//copypase ffrom MINDFORK!! MHAHAH
			
		}
		
		
		function StartGame(){
				
			var game:Game = new Game();
			addChild(game);
			
			
		}
	}
	
}
