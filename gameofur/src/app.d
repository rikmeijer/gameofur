import std.stdio;

import gameofur.domain.game;
import gameofur.process.controller;

void main() {
	writeln("go!");
	new Controller(new Game()).go();
}