//importer la librarie PDF
import processing.pdf.*;

//Définir uen variable typo
PFont typo;
//Définir un tableau de mots
String[] lang = {"Bonjour", "Hello", "Guten tag", "Tere", "Buenos Dias", "Adjieu"};

//Définir une variable de type vrai/faux pour l'enregistrement
boolean recording;
//Définir une variable contenant le pdf
PGraphicsPDF pdf;

//Setup, 1 fois en debut de programme
void setup() {
	size(1000, 1000);
	//chargement de la typogrpahie
	typo = createFont("Monoid-Bold-Dollar-0-1-l.ttf", 50);
	
	//chargement du pdf.
	pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "pause-resume.pdf"); //------------------------
	
	background(0);
}

//Draw, s'éxécute en boucle
void draw() {
	textFont(typo);
	fill(random(255), random(255), random(255));
	
	int de = int(random(5));
	text(lang[de], random(width), random(height));
}

//keyPressed, écoute du clavier
void keyPressed() {
	if (key == 'r') { //si j'appuis sur la touche r
		
		if (recording) { //si je suis en train d'enregistrer le pdf
			endRecord(); // je stop l'enregistrement du pdf
			println("Recording pdf stopped.");
			recording = false;
			
		} else { //si je ne suis pas en train d'enregistrer le pdf
			beginRecord(pdf); // je commence l'enregistrement du pdf
			println("Recording pdf started.");
			recording = true;
		}
		
	} else if (key == 'q') { //si j'appuis sur la touche q
		//Je stop l'enregistrement du pdf et je quitte le programme
		if (recording) {
			endRecord();
		}
		exit();
	}
}
