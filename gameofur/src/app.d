import std.stdio;

import gameofur.domain.game;
import gameofur.process.controller;

void main() {
	new Controller(new Game()).go();
}
