PImage joe;

void setup() {
	size(800, 800);
	background(220, 210, 230);
	//remplir un objet image avec une image de l'ordinateur
	joe = loadImage("bob.png");
	joe.resize(joe.width / 4, joe.height / 4);
}

void draw() {
	tint(random(255), random(255), random(255));
	imageMode(CENTER);
	image(joe, random(width), random(height));
	
	if (mousePressed) {
		noTint();
		image(joe, mouseX, mouseY);
	}
}

//Écouter le clavier
void keyPressed() {
	//Si on appuie sur la touche 's'
	if (key ==  's') {
		save("export/save" + frameCount + ".png");
	}
}
