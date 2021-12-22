ArrayList<Letter> letters = new ArrayList<Letter>();

void setup(){
  size(800,800,P2D);
  for(int i=0;i<300;i++){
    letters.add(new Letter(int(random(width)),int(random(height))));  
  }
}

void draw(){
  fill(0,10);
  rect(0,0,width,height);
  for(int i=0;i<letters.size();i++){
    letters.get(i).draw();
  }
}
