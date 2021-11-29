
//fonction setup, 1 fois au début
void setup() {
	size(800,800);
}

//fonction draw, s'éxécute en boucle
void draw() {
	noStroke();
	fill(0,10);
	rectMode(CORNER);
	rect(0,0,width,height);
	
	monDessin(100,100,40,100);	
	monDessin(400,400,50,220);	
	monDessin(100,700,20,100);
	monDessin(mouseX,mouseY,25,200);	
}


void monDessin(float x,float y, float taille, int col) {
	noStroke();
	fill(col);
	rectMode(CENTER);
	rect(x + random( - taille,taille),y + random( - taille,taille),10,10);
	
	stroke(0,255,255,100);
	noFill();
	ellipse(x,y,taille * 3,taille * 3);
}