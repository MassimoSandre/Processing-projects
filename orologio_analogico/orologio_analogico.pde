
int h = 600, w = 800;



void setup() {
  size(800,600); 
  frame.setResizable(true);
}
 
void draw() {
  h = height;
  w = width;
  if(h > w) h = w;
  background(240);
  strokeWeight(1);
  ellipse(w/2,h/2,h-h/16,h-h/16);
  
  for(int i = 0; i < 60; i++) {
    float temp = map(i,0,60,0-(PI/2),2*PI-(PI/2));
    int raggio;
    if(i%5 == 0) {
      raggio = 30;
      strokeWeight(5);
    }
    else{
      raggio = 20;
      strokeWeight(1);
    }
    line(getX(temp,(h-h/16)/2-raggio),getY(temp,(h-h/16)/2-raggio),getX(temp,(h-h/16)/2),getY(temp,(h-h/16)/2));
  }
  strokeWeight(10);
  float sec = map(second(),0,60,0-(PI/2),2*PI-(PI/2));
  float min = map(minute(),0,60,0-(PI/2),2*PI-(PI/2));
  float hour = map(hour(),0,24,0-(PI),2*PI-(PI));
  
  
  line(w/2,h/2,getX(sec,(h-h/16)/2),getY(sec,(h-h/16)/2));
  line(w/2,h/2,getX(min,(h-h/16)/2/4*3),getY(min,(h-h/16)/2/4*3));
  line(w/2,h/2,getX(hour,h/4),getY(hour,h/4));
}
  
float getX(float sec,float r) {
  float x = w/2 + r*cos(sec);
  return x;
}

float getY(float sec, float r) {
  
  float y = h/2 + r*sin(sec);
  return y;
}
