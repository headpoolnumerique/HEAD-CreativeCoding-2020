/*
	1) Charger une typo
	> Genérer une typographie a partir du menu déroulant
	> Celui-ci génère une typo au format *.vlw dans le fichier data
	> Chargé ce fichier vlw dans le projet

	2) Utiliser l'argument "text()" pour utiliser/écrire avec un typo
*/

//Variable contenant la typoraphie
PFont firaFont;

void setup(){
	size(800, 800);
	background(40);
	
	// Charger la typo
	firaFont = loadFont("FiraCode-Bold-48.vlw");
}

void draw(){

	//Selectionné la typo courante
	textFont(firaFont);
	fill(random(255));

	//Écrire sur la scène
	text("Hello World !",random(width),random(height));
}