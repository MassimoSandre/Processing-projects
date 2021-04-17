// imposto la dimensione della finestra a 600x600
size(600,600);
// imposto il background della finestra a bianco
background(255);
// imposto lo spessore del tratto a 5px
strokeWeight(5);

// disegno 3 righe di cerchi
for(int i = 0; i < 3;i++) {
  // disegno 3 cerchi per ogni riga
  for(int j = 0; j < 3; j++) {
    // imposto un colore di riempimento random
    fill(random(256),random(256),random(256));
    // disegno un cerchio
    ellipse(200 + 100*i,200 + 100*j,50,50);
  }
}
