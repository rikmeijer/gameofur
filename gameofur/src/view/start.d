module gameofur.view.start;

import std.stdio, consoled;

class Start {
	
	public void render() {
		//foreground = Color.red;	

        stdout.writeln("######################################################");
        stdout.writeln("# Welcome to the Royal Game of Ur                    #");
        stdout.writeln("#                                                    #");
        stdout.writeln("# you play WHITE against the computer playing BLACK  #");
        stdout.writeln("# you start...                                       #");
        stdout.writeln("#                                                    #");
        stdout.writeln("######################################################");
        stdout.writeln("> press key to continue");
        
		string input = stdin.readln();
		writeln(input);	
	}
}