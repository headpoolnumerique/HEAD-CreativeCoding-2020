import processing.pdf.*;

PGraphicsPDF pdf;

PImage currentImage;
String [] nomImages;
PGraphics buf;

void setup() {
  size(800, 800, P2D);
  //println(sketchPath()+"/data/images");
  nomImages = listFileNames(sketchPath()+"/data/images");
  //println(nomImages[10]);
  int de=int(random(nomImages.length));
  currentImage = loadImage("images/"+nomImages[de]);

  pdf = (PGraphicsPDF)beginRecord(PDF, "RandomBook.pdf");
  beginRecord(pdf);
  
  buf = createGraphics(100, 100, P2D);
}


void draw() {
  //image(currentImage, 0, 0);
  //copy(src,sx, sy, sw, sh, dx, dy, dw, dh)
  for (int i=0; i<100; i++) {
    buf.beginDraw();
    buf.copy(currentImage, int(random(800)), int(random(800)), 100, 100, 0, 0, 100, 100);
    buf.rect(20,20,60,60);
    buf.endDraw();
    image(buf, int(random(800)), int(random(800)));
  }

  int de=int(random(nomImages.length));
  currentImage = loadImage("images/"+nomImages[de]);

  if (frameCount == 200) {
    endRecord();
    exit();  // Quit
  } else {
    pdf.nextPage();  // Tell it to go to the next page
  }
}
