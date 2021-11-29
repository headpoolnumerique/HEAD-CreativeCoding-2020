
//fonction setup, 1 fois au début
void setup(){
	size(800,800);
	background(0);
}

//fonction draw, s'éxécute en boucle
void draw(){
	for(int i=0;i<width;i+=10){
		for(int j=0;j<height;j+=10){
			fill(random(255));
			rect(i,j,10,10);
		}
	}
}