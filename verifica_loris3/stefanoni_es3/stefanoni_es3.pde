void setup() {
  // imposto la dimensione della finestra a 600x600
  size(600,600);
}

void draw() {
  // pulisco lo schermo e imposto il colore di sfondo a bianco
  background(255);
  
  if(mouseX < 300 && mouseY < 300) {
    // in alto a sinistra -> riempimento rosso
    fill(255,0,0);
  }
  else if(mouseX > 300 && mouseY < 300) {
    // in alto a destra -> riempimento blu
    fill(0,0,255);
  }
  else if(mouseX < 300 && mouseY > 300) {
    // in basso a sinistra -> riempimento giallo
    fill(255,255,0);
  }
  else if(mouseX > 300 && mouseY > 300) {
    // in basso a destra -> riempimento verde
    fill(0,255,0);
  }
  
  // disegno un cerchio nella posizione del mouse
  ellipse(mouseX, mouseY,50,50);
}
