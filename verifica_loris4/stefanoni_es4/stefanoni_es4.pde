// imposto il diametro iniziale del cerchio a 250px
int diam = 250;

void setup() {
  // imposto la dimensione della finestra a 400x400
  size(400,400);
}


void draw() {
  // pulisco lo schermo e imposto il colore di sfondo a nero
  background(0);
  // disegno un cerchio di diametro diam in mezzo alla finestra
  ellipse(200,200,diam,diam);
  
  if(mousePressed) diam++; // se si sta premendo un tasto del mouse incremento di 1 il diametro
  else diam--;             // se non si sta premendo un tasto del mouse decremento di 1 il diametro
  
  // impedisco che il diametro superi i limiti
  if(diam > 400) diam = 400;
  if(diam < 100) diam = 100;
  
}
