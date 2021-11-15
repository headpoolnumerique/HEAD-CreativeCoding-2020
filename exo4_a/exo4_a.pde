/*
	1> Utilisation d'un tableau de chaines de caractères
*/

PFont faune;
//Variable contenant la typoraphie
String [] langages = {"Bonjour", "Hello", "Guten Tag", "Buenos días", "Tere päevast"};

//numéro pour parcourir le tableau
int index=0;

void setup(){
	size(800, 800);
	background(40);
	
	// Charger la typo
	faune = loadFont("Faune-TextItalic-30.vlw");
}

void draw(){
	
	if(mousePressed){
		textFont(faune);
		fill(mouseX,mouseY,mouseX+mouseY);
		text(langages[index],mouseX,mouseY);

		//on incrémente l'index a chaques clic
		index = index + 1;

		//on revient a zero si l'index dépasse le tableau
		if(index > langages.length - 1){
			index=0;
		}
	}
	
}
