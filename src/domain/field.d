module sokoban.domain.field;

import sokoban.domain.stone;
import std.algorithm.searching;
import std.algorithm.mutation;

interface Veld {
	
	public bool putStone(Stone stone);
	public bool removeStone(Stone stone);
	
}

class Normaal : Veld {
	
	private Stone stone;
	
	public bool putStone(Stone stone) {
		// TODO: sla steen
		
		this.stone = stone;
		return true;
	}
	public bool removeStone(Stone stone) {
		if (stone != this.stone) {
			return false;
		}
		this.stone = null;
		return true;
	}

}

class Uiteinde : Veld {
	
	private Stone[] stones;
	
	public bool putStone(Stone stone) {
		this.stones ~= stone;
		return true;
	}
	public bool removeStone(Stone stone) {
		if (canFind(this.stones, stone) == false) {
			return false;
		}
		
		remove!(e => e == stone)(this.stones);
		return true;
	}
}

class Rozet : Veld {
	
	private Stone stone;
	
	public bool putStone(Stone stone) {
		if (this.stone !is null) {
			return false;
		}
		this.stone = stone;
		return true;
	}
	public bool removeStone(Stone stone) {
		if (stone != this.stone) {
			return false;
		}
		this.stone = null;
		return true;
	}
}
