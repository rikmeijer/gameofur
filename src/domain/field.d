module sokoban.domain.field;

import sokoban.domain.stone;

interface Field {
	
	public void putStone(Stone stone);
	public void removeStone(Stone stone);
	public Field next();
	
}

class CollectionField : Field {
	
}