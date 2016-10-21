module gameofur.process.controller;

import gameofur.domain.game;
import gameofur.view.start;

class Controller {

	private Game game;

	public this(Game game)
	{
		this.game = game;
	}
    
	public void go() 
	{
		game.start(&gameStarted);	
	}

	public void gameStarted()
	{
		Start view  = new Start();
		view.render();
	}
}
	
