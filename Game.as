package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.text.engine.SpaceJustifier;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.FontStyle;
	import flash.sampler.NewObjectSample;

	public class Game extends MovieClip{
		
		
		//fonts
		//"League Spartan" for embedded stuff
		//"
		
		

		public function Game() {
			// constructor code
			
			InitGame();
			addEventListener(Event.ENTER_FRAME,GameLoop);
			
		}
		
		
		var stopGame:Boolean;
		function GameLoop(e:Event){
			
			if(stopGame)return;
			stage.addEventListener(KeyboardEvent.KEY_DOWN,KeyDown);
			map.rotation+=rotSpeed;
			map.Run();
			
			//score++;
			
			
		}
		
		
		
		var pauseButton:PauseButton;
		var map:Map;
		
		
		var scoreText:TextField;
		var scoreTextFormat:TextFormat = new TextFormat();
		
		var score:int = 0;
		
		
		
		
		var gameover:GameOver;
		function AddGameOver(){
			gameover = new GameOver();
			addChild(gameover);
			gameover.scoreText.text = score.toString();
			
			
		}
		function InitGame(){
			
			
			
			CenterStage();
			map= new Map(),addChild(map);
			
			
			
			
			
			var touchInp:TouchInput= new TouchInput();
			addChild(touchInp);
			
			
			
			pauseButton= new PauseButton(),addChild(pauseButton);
			
			
			
			
			scoreText = new TextField();
			scoreText.defaultTextFormat = new TextFormat("League Spartan", 45,0xFFFFFF);
			scoreText.alpha=.5;
			scoreText.width=300;
			addChild(scoreText);
			scoreText.text = score.toString();
			
			
			
			
			//scoreText.mouseEnabled=false;
			scoreText.x=-Storage.halfWidth;
			scoreText.y=Storage.halfHeight-50;
			
			
			
		}
		
		
		
		
			var rotSpeed=0;
		function ChangeRot(){
			rotSpeed=2-Math.random()*4;
			
		}
		function KeyDown(kd:KeyboardEvent){
			// need to impove this!!
			//when you hold it it shakes
			Input();
			
		}
		
		function AddScore(){
			score++;
			scoreText.text = score.toString();
	
			
			
		}
		
		
		function Death(){
			AddGameOver();
			SaveScore();
			stopGame=true;
				
		}
		
		function SaveScore(){
			if(score>Storage.saveDataObj.data.highScore){
				Storage.saveDataObj.data.highScore=score;
			}
		}
		
		function Input(){
			//scaleX=-scaleX;
			map.player.WantToJump();
			map.player.alpha=1;
			ChangeRot();
		}
		
		
		
		
		
		
		function CenterStage(){
			x=Storage.halfWidth;
			y=Storage.halfHeight;
		}

	}
	
}
