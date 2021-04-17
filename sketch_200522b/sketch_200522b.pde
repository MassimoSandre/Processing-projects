size(600,600);
background(255,255,255);
strokeWeight(5);

for(int i = 0; i < 3;i++) {
  for(int j = 0; j < 3; j++) {
    fill(random(256),random(256),random(256));
    ellipse(200 + 100*i,200 + 100*j,50,50);
  }
}
