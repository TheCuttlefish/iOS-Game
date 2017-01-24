package  {
	import flash.display.MovieClip;
	public class Map extends MovieClip {

		public function Map() {
			// constructor code
			
			AddGameObjects();
		}
		
		
		function Run(){
			player.Run();
			RunArrays();
			//x-=(x-player.y)/10;
			
			if(spikeSpawnTimer>0){
				spikeSpawnTimer--;
			}else{
				Game(parent).scoreText.text = Game(parent).score.toString();
				AddSpike();
				
			}
		}
		
		var floor:Floor;
		var player:Player;
		
		function Death(){
			Game(parent).Death();
		}
		function AddGameObjects(){
			
			floor = new Floor(),addChild(floor);
			player = new Player(),addChild(player);
			
			
			while(spikes.length<6){
				var s:Spike= new Spike();
				addChild(s);
				spikes.push(s);
			}
			
			
		}
		
		
		
		var spikes:Array = new Array();
		var spikeType:int=0;
		var spike:Spike;
		var spikeSpawnDistance:int=500;
		
		var currentSpikeNum:int=1;
		function AddSpike(){
			//i CAn ARRAGE DIFFICULTY BY TYPES:
			//level 1 10 JUMPS = 3 COMBOS
			//LEVEL 2 50 JUMPS = 6 COMBOS
			//ETC ETC
			//here will be different formulaes how to add spikes
			
			
			spikeType=int(Math.random()*8);
			
			
			switch(spikeType){
				
			case 0:// _
				RelocateSpike(spikeSpawnDistance,0);
				
			break;
			
			case 1://_  _
				RelocateSpike(spikeSpawnDistance,0);
				RelocateSpike(spikeSpawnDistance+150,0);
			break;
			
			case 2://- _
				RelocateSpike(spikeSpawnDistance,-80);
				RelocateSpike(spikeSpawnDistance+150,0);
			break;
			
			case 3://- -
				RelocateSpike(spikeSpawnDistance,-80);
				RelocateSpike(spikeSpawnDistance+150,-80);
			break;
			
			case 4://_ -
				RelocateSpike(spikeSpawnDistance,0);
				RelocateSpike(spikeSpawnDistance+150,-80);
			break;
			
			case 5://__
				RelocateSpike(spikeSpawnDistance,0);
				RelocateSpike(spikeSpawnDistance+150,0);
			break;
			
			case 6:// _ low one
			RelocateSpike(spikeSpawnDistance,-40);
			break;
			
			case 7:// :_ HARD ONE
			RelocateSpike(spikeSpawnDistance,0);
			RelocateSpike(spikeSpawnDistance,-200);
			break;
			
			
			}
			
			
			
			
			spikeSpawnTimer=40;
		}
		
		function RelocateSpike(xPos,yPos){
			
			spikes[currentSpikeNum].x=xPos;
			spikes[currentSpikeNum].y=yPos;
			spikes[currentSpikeNum].isBehind=false;
			NextSpike();
		}
		
		function AddScore(){
			Game(parent).AddScore();
		}
		
		
		
		function NextSpike(){
			currentSpikeNum++;
			//Game(parent).score++;
			if(currentSpikeNum>5)currentSpikeNum=0;
		}
		
		var spikeSpawnTimer:int=0;
		var spikeInstance:Spike;
		function RunArrays(){
			
			for each(var aSpike:Spike in spikes){
				
				if(aSpike.alive){
				aSpike.Run();
				}
				
			}
			
		
			
		}
		
		
		
		

	}
	
}
