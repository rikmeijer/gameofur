module gameofur.domain.game;

class Game {
	
	public void start(void delegate() gameStarted) {

		gameStarted();
	}
	
	public void currentPlayerMoveStone() {
		
	}
	
}