/*
	1> Même exercice avec 2 typographies différentes
	--Laisser les étudiants chercher
*/

//Variable contenant la typoraphie
PFont firaFont;
PFont faune;

void setup(){
	size(800, 800);
	background(40);
	
	// Charger la typo
	firaFont = loadFont("FiraCode-Bold-48.vlw");
	faune = loadFont("Faune-TextItalic-30.vlw");
}

void draw(){

	//Selectionné la typo courante
	textFont(firaFont);
	fill(random(255));

	//Écrire sur la scène
	text("Hello World !",random(width),random(height));

	textFont(faune);
	fill(random(255),0,0);

	//Écrire sur la scène
	text("Faune typographie",random(width),random(height));
}