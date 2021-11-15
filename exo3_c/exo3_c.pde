/*
	1> Variante de l'exercice 3_c
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
	
	//alignement de texte par rapport au centre
	textAlign(CENTER,CENTER);

	if( mousePressed){
		//Selectionné la typo courante
		textFont(firaFont);
		fill(random(255));

		//Écrire sur la scène
		text("Hello World !",mouseX,mouseY);

		textFont(faune);
		fill(random(255),0,0);

		//Écrire sur la scène
		text("Faune typographie",width-mouseX,mouseY);
	}
}