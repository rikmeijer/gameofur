module gameofur.domain.field;

import gameofur.domain.stone;
import std.algorithm.searching;
import std.algorithm.mutation;

interface Field {
	
	public bool putStone(Stone stone);
	public bool removeStone(Stone stone);
	
}

class Default : Field {
	
	private Stone stone;
	
	public bool putStone(Stone stone) {
		// TODO: sla steen
		
		this.stone = stone;
		return true;
	} unittest {
		Default field = new Default();
		Stone stone = new Stone();

		assert(field.stone is null);
		assert(field.putStone(stone));
		assert(field.stone != stone);
	}

	public bool removeStone(Stone stone) {
		if (stone != this.stone) {
			return false;
		}
		this.stone = null;
		return true;
	}

}

class Terminator : Field {
	
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

class Rosette : Field {
	
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
