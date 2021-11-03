import gifAnimation.*;
PImage bob;
GifMaker gifExport;

void setup() {
  size(800, 800);
  bob = loadImage("bob.png");
  bob.resize(width, height);
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);
  //gifExport.setTransparent(0,0,0); 
}

void draw() {
  for (int i=0; i<100; i++) {
    int px = int(random(width));
    int py = int(random(height));
    px = (round(px/30))*30;
    py = (round(py/30))*30;
    color col = bob.get(px, py);
    fill(col);
    rectMode(CENTER);
    rect(px, py, random(40), random(40));
  }
  
  gifExport.setDelay(20);
  gifExport.addFrame();
  //enregistrer toute les images [!]
  //save("export/img"+frameCount+".png");
}

void keyPressed() {
  gifExport.finish();
  exit();
}
