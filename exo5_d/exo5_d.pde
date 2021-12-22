import processing.pdf.*;
import processing.video.*;

Movie movie;
PGraphicsPDF pdf;
int limit=200;

PGraphics buffer;
PFont typo;

void setup() {
  size(800, 800, P2D);
  
  pdf = (PGraphicsPDF)beginRecord(PDF, "RandomBook.pdf");
  beginRecord(pdf);

  movie = new Movie(this, "launch2.mp4");
  movie.loop();

  buffer=createGraphics(800, 800, P2D);
  
  typo = createFont("SpaceMono-Bold.ttf",40);
}

void draw() {
  noStroke();

  if (movie.available()) {
    movie.read();
    buffer.beginDraw();
    buffer.image(movie, 0, 0, width, height);
    buffer.endDraw();
  }
  image(buffer, 0, 0, width, height);

  int val = int(map(frameCount, 0, limit, 0, 255));
  fill(val);
  rect(0, height-40, width, 40);
  fill(val);
  rect(0, 0, width, 40);

  textFont(typo);
  text("frame : "+frameCount,10,40,300,100);

  if (frameCount == limit) {
    endRecord();
    exit();
  } else {
    pdf.nextPage();
  }
}
