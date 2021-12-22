import processing.pdf.*;

PGraphicsPDF pdf;

void setup(){
  size(800,800,P2D);
  
  pdf = (PGraphicsPDF)beginRecord(PDF, "RandomBook.pdf");
  beginRecord(pdf);
}

void draw(){
  noStroke();
  for(int i=0;i<width;i+=10){
    for(int j=0;j<height;j+=10){
      fill(random(200,255),random(255),random(255));
      rect(i,j,10,10);
    }
  }
  
  if(frameCount == 30) {
    endRecord();
    exit();
  } else {
    pdf.nextPage(); 
  }
}
