int lato = 10,larghezza=1000,altezza=600;
int x = 500;
int y = 300;

boolean end=false;

int point = 1;
int selector=0;

int fx;
int fy;

int time;
int intervallo=150;
int in=intervallo;

int direzione = 4;

int dir;

int culo=0;

int[] lun = new int[10000];
int[] lastlun = new int[(larghezza*altezza)/(lato*lato)];
void setup() {
  size(1000,600);
  strokeWeight(1);
  for(int i=0;i<10000;i++) {
    lun[i]=-10;
  }
  lun[0]=x;
  lun[1]=y;
  fx=int(random(0,99));
  fy=int(random(0,59));
  fx*=10;
  fy*=10;
  
 
}

void draw() {
  
  if (key == 'w') {
    direzione = 1;
  } 
  else if (key == 'a') {
    direzione = 2;
  }
  else if (key == 's') {
    direzione = 3;
  }
  else if (key == 'd') {
    direzione = 4;
  }
  if(!end) background(240);
  textSize(20);
  fill(0,0,0);
  text("Score: "+(culo),10,20);
  for(int i=selector;i<point*2;i++) {
    lastlun[i-selector]=lun[i];
    dir=i;
  }
  for(int i=0;i<point*2;i+=2) {
    fill(0,200,0);
    rect(lastlun[i],lastlun[i+1],lato,lato);
  }
  fill(200,0,0);
  rect(fx,fy,lato,lato);
  time=millis();
  if(time>intervallo) {
    point++;
    selector+=2;
    switch(direzione) {
    
    case 1:
    lun[dir+1]=lun[dir-1];
    lun[dir+2]=lun[dir]-lato;
    break;
    case 2:
    lun[dir+1]=lun[dir-1]-lato;
    lun[dir+2]=lun[dir];
    break;
    case 3:
    lun[dir+1]=lun[dir-1];
    lun[dir+2]=lun[dir]+lato;
    break;
    case 4:
    lun[dir+1]=lun[dir-1]+lato;
    lun[dir+2]=lun[dir];
    break;
    
    }
    if(lun[dir+1]==fx&&lun[dir+2]==fy){
      fx=int(random(0,99));
      fy=int(random(0,59));
      fx*=10;
      fy*=10;
      selector-=2;
      culo++;
    }
    if(lun[dir+1]>=larghezza||lun[dir+1]<0||lun[dir+2]>=altezza||lun[dir+2]<0) {
    fill(0,0,0);
    textSize(32);
    text("Game Over", 400, 250);
    selector=point*2;
    dir--;
    end=true;
    }
    
    intervallo+=in;
  }
}
