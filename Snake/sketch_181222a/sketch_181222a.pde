int lato = 10,larghezza=1000,altezza=600;
int x = 500;
int y = 300;

boolean end=false;
boolean ow=false;

int point = 1;
int selector=0;

int score=1;
int sec;

int fx;
int fy;

int time;
int intervallo=90;  // 45
int in=intervallo;

int direzione = 4;

int dir;

int[] lun = new int[1000000];
int[] lastlun = new int[(larghezza*altezza)/(lato*lato)];
void setup() {
  size(1000,600);
  strokeWeight(1);
  for(int i=0;i<1000;i++) {
    lun[i]=-10;
  }
  lun[0]=x;
  lun[1]=y;
  do {
    ow=false;
    fx=int(random(5,99));
    fy=int(random(5,59));
    fx*=10;
    fy*=10;
    for(int i=0;i<dir+2;i+=2) {
      if(fx==lastlun[i]&&fy==lastlun[i+1]) {
        ow=true;
      }
    }
  }while(ow);

 
}

void draw() {
  if(!end) sec=millis()/1000;
  if ((key == 'W'||key == 'w')&&direzione!=3) {
    direzione = 1;
  } 
  else if ((key == 'A'||key == 'a')&&direzione!=4) {
    direzione = 2;
  }
  else if ((key == 'S'||key == 's')&&direzione!=1) {
    direzione = 3;
  }
  else if ((key == 'D'||key == 'd')&&direzione!=2) {
    direzione = 4;
  }
  /*else if (key == 'K'||key == 'k') {
    selector-=2;
  }*/


  if(!end) {
    background(240);
  }
  strokeWeight(3);
  line(0,50,larghezza,50);
  strokeWeight(1);
  
  for(int i=selector;i<point*2;i++) {
    lastlun[i-selector]=lun[i];
    dir=i;
  }
  for(int i=0;i<dir+1-selector;i+=2) {
    fill(0,lastlun[i]%256,lastlun[i+1]%256);
    rect(lastlun[i],lastlun[i+1],lato,lato);
  }
  strokeWeight(0);
  fill(240);
  rect(0,0,(int)lato*1.5,(int)lato*1.5);
  strokeWeight(1);
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
      do {
        ow=false;
        fx=int(random(5,99));
        fy=int(random(5,59));
        fx*=10;
        fy*=10;
        for(int i=0;i<dir+2-selector;i+=2) {
          if(fx==lastlun[i]&&fy==lastlun[i+1]) {
            ow=true;
          }
        }
      }while(ow);
      selector-=2;
      score++;
    }
    if(lun[dir+1]>=larghezza||lun[dir+1]<0||lun[dir+2]>=altezza||lun[dir+2]<50) {
    fill(0,0,0);
    textSize(32);
    text("Game Over", 415, 40);
   
    selector=point*2;
    dir--;
    end=true;
    }
    for(int i=0;i<dir+1-selector;i+=2) {
      if(lun[dir+1]==lastlun[i]&&lun[dir+2]==lastlun[i+1]) {
        fill(0,0,0);
        textSize(32);
        text("Game Over", 415, 40);
        
        selector=point*2;
        dir--;
        end=true;
      }
    }
    
    intervallo+=in;
  }
  textSize(30);
  fill(0,0,0);
  text("Score: "+score, 20, 35);
  text("Time: "+sec, 850, 35);
}
