int top[][] = {{0,0,0},{0,0,0},{0,0,0}},
    left[][] = {{1,1,1},{1,1,1},{1,1,1}},
    front[][] = {{2,2,2},{2,2,2},{2,2,2}},
    right[][] = {{3,3,3},{3,3,3},{3,3,3}},
    back[][] = {{4,4,4}, {4,4,4},{4,4,4}},
    down[][] = {{5,5,5},{5,5,5},{5,5,5}},
    round[]={0,0,0,0,0,0,0,0,0,0,0,0},
    side[]={0,0,0,0,0,0,0,0};
char mov='a';

int lato=60;
int ii;
int jj;

int inter=500;
int time;

boolean ril=true;

void setup() {
  size(920,700);
}

void keyReleased() {
  ril=true; 
}

void draw() {
  
  if (keyPressed && ril) {
    mov=key;
    ril=false;
  }  
  
  switch(mov) {
    case 'u':  
      for(int i = 0;i<3;i++) {
        round[i] = left[0][i];
      }
      for(int i = 3;i<6;i++) {
        round[i] = front[0][i-3];
      }
      for(int i = 6;i<9;i++) {
        round[i] = right[0][i-6];
      }
      for(int i = 9;i<12;i++) {
        round[i] = back[0][i-9];
      }
      
      for(int i = 0;i<3;i++) {
        back[0][i] = round[i]; 
      }
      for(int i = 3;i<6;i++) {
        left[0][i-3] = round[i];
      }
      for(int i = 6;i<9;i++) {
        front[0][i-6] = round[i]; 
      }
      for(int i = 9;i<12;i++) {
        right[0][i-9] = round[i];
      }
      
      
      side[0] = top[0][0];
      side[1] = top[0][1]; //
      side[2] = top[0][2];
      side[3] = top[1][0]; //
      side[4] = top[1][2]; //
      side[5] = top[2][0];
      side[6] = top[2][1]; //
      side[7] = top[2][2];
      
      top[0][1] = side[3]; //
      top[1][0] = side[6];//
      top[1][2] = side[1];//
      top[2][1] = side[4];//
      
      top[0][0] = side[5];
      top[0][2] = side[0];
      top[2][0] = side[7];
      top[2][2] = side[2];
      
      break;
    
    case 'l':
      
      for(int i = 0;i<3;i++) {
        round[i] = top[i][0];
      }
      for(int i = 3;i<6;i++) {
        round[i] = front[i-3][0];
      }
      for(int i = 6;i<9;i++) {
        round[14-i] = down[i-6][0];
      }
      for(int i = 9;i<12;i++) {
        round[20-i] = back[i-9][2];
      }
      
      for(int i = 0;i<3;i++) {
        front[i][0] = round[i]; 
      }
      for(int i = 3;i<6;i++) {
        down[i-3][0] = round[i];
      }
      for(int i = 6;i<9;i++) {
        back[i-6][2] = round[i]; 
      }
      for(int i = 9;i<12;i++) {
        top[i-9][0] = round[i];
      }
      
      side[0] = left[0][0];
      side[1] = left[0][1]; //
      side[2] = left[0][2];
      side[3] = left[1][0]; //
      side[4] = left[1][2]; //
      side[5] = left[2][0];
      side[6] = left[2][1]; //
      side[7] = left[2][2];
      
      left[0][1] = side[3]; //
      left[1][0] = side[6];//
      left[1][2] = side[1];//
      left[2][1] = side[4];//
      
      left[0][0] = side[5];
      left[0][2] = side[0];
      left[2][0] = side[7];
      left[2][2] = side[2];
      
      break;
    
    case 'f':
    
      for(int i = 0;i<3;i++) {
        round[i] = top[2][i];
      }
      for(int i = 3;i<6;i++) {
        round[8-i] = right[i-3][0];
      }
      for(int i = 6;i<9;i++) {
        round[i] = down[0][i-6];
      }
      for(int i = 9;i<12;i++) {
        round[20-i] = left[i-9][2];
      }
      
      for(int i = 0;i<3;i++) {
        right[i][0] = round[i]; 
      }
      for(int i = 3;i<6;i++) {
        down[0][i-3] = round[i];
      }
      for(int i = 6;i<9;i++) {
        left[i-6][2] = round[i]; 
      }
      for(int i = 9;i<12;i++) {
        top[2][i-9] = round[i];
      }
      
      
      
      side[0] = front[0][0];
      side[1] = front[0][1]; //
      side[2] = front[0][2];
      side[3] = front[1][0]; //
      side[4] = front[1][2]; //
      side[5] = front[2][0];
      side[6] = front[2][1]; //
      side[7] = front[2][2];
      
      front[0][1] = side[3]; //
      front[1][0] = side[6];//
      front[1][2] = side[1];//
      front[2][1] = side[4];//
      
      front[0][0] = side[5];
      front[0][2] = side[0];
      front[2][0] = side[7];
      front[2][2] = side[2];
      
      break;
    
    case 'r':
        
      for(int i = 0;i<3;i++) {
        round[2-i] = top[i][2];
      }
      for(int i = 3;i<6;i++) {
        round[i] = front[i-3][2];
      }
      for(int i = 6;i<9;i++) {
        round[i] = down[i-6][2];
      }
      for(int i = 9;i<12;i++) {
        round[20-i] = back[i-9][0];
      }
      
      for(int i = 0;i<3;i++) {
        back[i][0] = round[i]; 
      }
      for(int i = 3;i<6;i++) {
        top[i-3][2] = round[i];
      }
      for(int i = 6;i<9;i++) {
        front[i-6][2] = round[i]; 
      }
      for(int i = 9;i<12;i++) {
        down[i-9][2] = round[i];
      }
      
      side[0] = right[0][0];
      side[1] = right[0][1]; //
      side[2] = right[0][2];
      side[3] = right[1][0]; //
      side[4] = right[1][2]; //
      side[5] = right[2][0];
      side[6] = right[2][1]; //
      side[7] = right[2][2];
      
      right[0][1] = side[3]; //
      right[1][0] = side[6];//
      right[1][2] = side[1];//
      right[2][1] = side[4];//
      
      right[0][0] = side[5];
      right[0][2] = side[0];
      right[2][0] = side[7];
      right[2][2] = side[2];
      
      break;
    
    case 'b':
      for(int i = 0;i<3;i++) {
        round[2-i] = top[0][i];
      }
      for(int i = 3;i<6;i++) {
        round[i] = left[i-3][0];
      }
      for(int i = 6;i<9;i++) {
        round[14-i] = down[2][i-6];
      }
      for(int i = 9;i<12;i++) {
        round[i] = right[i-9][2];
      }
      
      for(int i = 0;i<3;i++) {
        left[i][0] = round[i]; 
      }
      for(int i = 3;i<6;i++) {
        down[2][i-3] = round[i];
      }
      for(int i = 6;i<9;i++) {
        right[i-6][2] = round[i]; 
      }
      for(int i = 9;i<12;i++) {
        top[0][i-9] = round[i];
      }
      side[0] = back[0][0];
      side[1] = back[0][1]; //
      side[2] = back[0][2];
      side[3] = back[1][0]; //
      side[4] = back[1][2]; //
      side[5] = back[2][0];
      side[6] = back[2][1]; //
      side[7] = back[2][2];
      
      back[0][1] = side[3]; //
      back[1][0] = side[6];//
      back[1][2] = side[1];//
      back[2][1] = side[4];//
      
      back[0][0] = side[5];
      back[0][2] = side[0];
      back[2][0] = side[7];
      back[2][2] = side[2];
        
      break;
      
    case 'd':
      for(int i = 0;i<3;i++) {
        round[i] = left[2][i];
      }
      for(int i = 3;i<6;i++) {
        round[i] = front[2][i-3];
      }
      for(int i = 6;i<9;i++) {
        round[i] = right[2][i-6];
      }
      for(int i = 9;i<12;i++) {
        round[i] = back[2][i-9];
      }
      
      for(int i = 0;i<3;i++) {
        front[2][i] = round[i]; 
      }
      for(int i = 3;i<6;i++) {
        right[2][i-3] = round[i];
      }
      for(int i = 6;i<9;i++) {
        back[2][i-6] = round[i]; 
      }
      for(int i = 9;i<12;i++) {
        left[2][i-9] = round[i];
      }
      side[0] = down[0][0];
      side[1] = down[0][1]; //
      side[2] = down[0][2];
      side[3] = down[1][0]; //
      side[4] = down[1][2]; //
      side[5] = down[2][0];
      side[6] = down[2][1]; //
      side[7] = down[2][2];
      
      down[0][1] = side[3]; //
      down[1][0] = side[6];//
      down[1][2] = side[1];//
      down[2][1] = side[4];//
      
      down[0][0] = side[5];
      down[0][2] = side[0];
      down[2][0] = side[7];
      down[2][2] = side[2];
      
      break;
    case 'U':  
      for(int o = 0;o<3;o++) {
        for(int i = 0;i<3;i++) {
          round[i] = left[0][i];
        }
        for(int i = 3;i<6;i++) {
          round[i] = front[0][i-3];
        }
        for(int i = 6;i<9;i++) {
          round[i] = right[0][i-6];
        }
        for(int i = 9;i<12;i++) {
          round[i] = back[0][i-9];
        }
        
        for(int i = 0;i<3;i++) {
          back[0][i] = round[i]; 
        }
        for(int i = 3;i<6;i++) {
          left[0][i-3] = round[i];
        }
        for(int i = 6;i<9;i++) {
          front[0][i-6] = round[i]; 
        }
        for(int i = 9;i<12;i++) {
          right[0][i-9] = round[i];
        }
        
        
        side[0] = top[0][0];
        side[1] = top[0][1]; //
        side[2] = top[0][2];
        side[3] = top[1][0]; //
        side[4] = top[1][2]; //
        side[5] = top[2][0];
        side[6] = top[2][1]; //
        side[7] = top[2][2];
        
        top[0][1] = side[3]; //
        top[1][0] = side[6];//
        top[1][2] = side[1];//
        top[2][1] = side[4];//
        
        top[0][0] = side[5];
        top[0][2] = side[0];
        top[2][0] = side[7];
        top[2][2] = side[2];
      }
      break;
    case 'L':
      for(int o = 0;o<3;o++) {
        for(int i = 0;i<3;i++) {
          round[i] = top[i][0];
        }
        for(int i = 3;i<6;i++) {
          round[i] = front[i-3][0];
        }
        for(int i = 6;i<9;i++) {
          round[14-i] = down[i-6][0];
        }
        for(int i = 9;i<12;i++) {
          round[20-i] = back[i-9][2];
        }
        
        for(int i = 0;i<3;i++) {
          front[i][0] = round[i]; 
        }
        for(int i = 3;i<6;i++) {
          down[i-3][0] = round[i];
        }
        for(int i = 6;i<9;i++) {
          back[i-6][2] = round[i]; 
        }
        for(int i = 9;i<12;i++) {
          top[i-9][0] = round[i];
        }
        
        side[0] = left[0][0];
        side[1] = left[0][1]; //
        side[2] = left[0][2];
        side[3] = left[1][0]; //
        side[4] = left[1][2]; //
        side[5] = left[2][0];
        side[6] = left[2][1]; //
        side[7] = left[2][2];
        
        left[0][1] = side[3]; //
        left[1][0] = side[6];//
        left[1][2] = side[1];//
        left[2][1] = side[4];//
        
        left[0][0] = side[5];
        left[0][2] = side[0];
        left[2][0] = side[7];
        left[2][2] = side[2];
      }
      break;
    
    case 'F':
      for(int o = 0;o<3;o++) {
        for(int i = 0;i<3;i++) {
          round[i] = top[2][i];
        }
        for(int i = 3;i<6;i++) {
          round[8-i] = right[i-3][0];
        }
        for(int i = 6;i<9;i++) {
          round[i] = down[0][i-6];
        }
        for(int i = 9;i<12;i++) {
          round[20-i] = left[i-9][2];
        }
        
        for(int i = 0;i<3;i++) {
          right[i][0] = round[i]; 
        }
        for(int i = 3;i<6;i++) {
          down[0][i-3] = round[i];
        }
        for(int i = 6;i<9;i++) {
          left[i-6][2] = round[i]; 
        }
        for(int i = 9;i<12;i++) {
          top[2][i-9] = round[i];
        }
        
        
        
        side[0] = front[0][0];
        side[1] = front[0][1]; //
        side[2] = front[0][2];
        side[3] = front[1][0]; //
        side[4] = front[1][2]; //
        side[5] = front[2][0];
        side[6] = front[2][1]; //
        side[7] = front[2][2];
        
        front[0][1] = side[3]; //
        front[1][0] = side[6];//
        front[1][2] = side[1];//
        front[2][1] = side[4];//
        
        front[0][0] = side[5];
        front[0][2] = side[0];
        front[2][0] = side[7];
        front[2][2] = side[2];
      }
      break;
    
    case 'R':
      for(int o = 0;o<3;o++) {
        for(int i = 0;i<3;i++) {
          round[2-i] = top[i][2];
        }
        for(int i = 3;i<6;i++) {
          round[i] = front[i-3][2];
        }
        for(int i = 6;i<9;i++) {
          round[i] = down[i-6][2];
        }
        for(int i = 9;i<12;i++) {
          round[20-i] = back[i-9][0];
        }
        
        for(int i = 0;i<3;i++) {
          back[i][0] = round[i]; 
        }
        for(int i = 3;i<6;i++) {
          top[i-3][2] = round[i];
        }
        for(int i = 6;i<9;i++) {
          front[i-6][2] = round[i]; 
        }
        for(int i = 9;i<12;i++) {
          down[i-9][2] = round[i];
        }
        
        side[0] = right[0][0];
        side[1] = right[0][1]; //
        side[2] = right[0][2];
        side[3] = right[1][0]; //
        side[4] = right[1][2]; //
        side[5] = right[2][0];
        side[6] = right[2][1]; //
        side[7] = right[2][2];
        
        right[0][1] = side[3]; //
        right[1][0] = side[6];//
        right[1][2] = side[1];//
        right[2][1] = side[4];//
        
        right[0][0] = side[5];
        right[0][2] = side[0];
        right[2][0] = side[7];
        right[2][2] = side[2];
      }
      break;
    
    case 'B':
      for(int o = 0;o<3;o++) {
        for(int i = 0;i<3;i++) {
          round[2-i] = top[0][i];
        }
        for(int i = 3;i<6;i++) {
          round[i] = left[i-3][0];
        }
        for(int i = 6;i<9;i++) {
          round[14-i] = down[2][i-6];
        }
        for(int i = 9;i<12;i++) {
          round[i] = right[i-9][2];
        }
        
        for(int i = 0;i<3;i++) {
          left[i][0] = round[i]; 
        }
        for(int i = 3;i<6;i++) {
          down[2][i-3] = round[i];
        }
        for(int i = 6;i<9;i++) {
          right[i-6][2] = round[i]; 
        }
        for(int i = 9;i<12;i++) {
          top[0][i-9] = round[i];
        }
        side[0] = back[0][0];
        side[1] = back[0][1]; //
        side[2] = back[0][2];
        side[3] = back[1][0]; //
        side[4] = back[1][2]; //
        side[5] = back[2][0];
        side[6] = back[2][1]; //
        side[7] = back[2][2];
        
        back[0][1] = side[3]; //
        back[1][0] = side[6];//
        back[1][2] = side[1];//
        back[2][1] = side[4];//
        
        back[0][0] = side[5];
        back[0][2] = side[0];
        back[2][0] = side[7];
        back[2][2] = side[2];
      }  
      break;
      
    case 'D':
      for(int o = 0;o<3;o++) {
        for(int i = 0;i<3;i++) {
          round[i] = left[2][i];
        }
        for(int i = 3;i<6;i++) {
          round[i] = front[2][i-3];
        }
        for(int i = 6;i<9;i++) {
          round[i] = right[2][i-6];
        }
        for(int i = 9;i<12;i++) {
          round[i] = back[2][i-9];
        }
        
        for(int i = 0;i<3;i++) {
          front[2][i] = round[i]; 
        }
        for(int i = 3;i<6;i++) {
          right[2][i-3] = round[i];
        }
        for(int i = 6;i<9;i++) {
          back[2][i-6] = round[i]; 
        }
        for(int i = 9;i<12;i++) {
          left[2][i-9] = round[i];
        }
        side[0] = down[0][0];
        side[1] = down[0][1]; //
        side[2] = down[0][2];
        side[3] = down[1][0]; //
        side[4] = down[1][2]; //
        side[5] = down[2][0];
        side[6] = down[2][1]; //
        side[7] = down[2][2];
        
        down[0][1] = side[3];//
        down[1][0] = side[6];//
        down[1][2] = side[1];//
        down[2][1] = side[4];//
        
        down[0][0] = side[5];
        down[0][2] = side[0];
        down[2][0] = side[7];
        down[2][2] = side[2];
      }
      break;
    default:
      break;
  }
  mov='a';
  ii=0;
  for(int i = 280;i<460;i+=lato) {
    jj=0;
    for(int j = 80;j<260;j+=lato) {
      switch(top[jj][ii]) {
        case 0:
          fill(255,255,255);
          break;
        case 1:
          fill(251, 115, 0);
          break;
        case 2:
          fill(0,255,0);
          break;
        case 3:
          fill(255,0,0);
          break;
        case 4:
          fill(0,0,255);
          break;
        case 5:
          fill(253, 244, 0);
          break;
      }
      rect(i,j,lato,lato);
      jj++;
    }
    ii++;
  }
  
  ii=0;
  for(int i = 100;i<280;i+=lato) {
    jj=0;
    for(int j = 260;j<440;j+=lato) {
      switch(left[jj][ii]) {
        case 0:
          fill(255,255,255);
          break;
        case 1:
          fill(251, 115, 0);
          break;
        case 2:
          fill(0,255,0);
          break;
        case 3:
          fill(255,0,0);
          break;
        case 4:
          fill(0,0,255);
          break;
        case 5:
          fill(253, 244, 0);
          break;
      }
      rect(i,j,lato,lato);
      jj++;
    }
    ii++;
  }
  
  ii=0;
  for(int i = 280;i<460;i+=lato) {
    jj=0;
    for(int j = 260;j<440;j+=lato) {
      switch(front[jj][ii]) {
        case 0:
          fill(255,255,255);
          break;
        case 1:
          fill(251, 115, 0);
          break;
        case 2:
          fill(0,255,0);
          break;
        case 3:
          fill(255,0,0);
          break;
        case 4:
          fill(0,0,255);
          break;
        case 5:
          fill(253, 244, 0);
          break;
      }
      rect(i,j,lato,lato);
      jj++;
    }
    ii++;
  }
  
  ii=0;
  for(int i = 460;i<640;i+=lato) {
    jj=0;
    for(int j = 260;j<440;j+=lato) {
      switch(right[jj][ii]) {
        case 0:
          fill(255,255,255);
          break;
        case 1:
          fill(251, 115, 0);
          break;
        case 2:
          fill(0,255,0);
          break;
        case 3:
          fill(255,0,0);
          break;
        case 4:
          fill(0,0,255);
          break;
        case 5:
          fill(253, 244, 0);
          break;
      }
      rect(i,j,lato,lato);
      jj++;
    }
    ii++;
  }
  
  ii=0;
  for(int i = 640;i<820;i+=lato) {
    jj=0;
    for(int j = 260;j<440;j+=lato) {
      switch(back[jj][ii]) {
        case 0:
          fill(255,255,255);
          break;
        case 1:
          fill(251, 115, 0);
          break;
        case 2:
          fill(0,255,0);
          break;
        case 3:
          fill(255,0,0);
          break;
        case 4:
          fill(0,0,255);
          break;
        case 5:
          fill(253, 244, 0);
          break;
      }
      rect(i,j,lato,lato);
      jj++;
    }
    ii++;
  }
  
  ii=0;
  for(int i = 280;i<460;i+=lato) {
    jj=0;
    for(int j = 440;j<620;j+=lato) {
      switch(down[jj][ii]) {
        case 0:
          fill(255,255,255);
          break;
        case 1:
          fill(251, 115, 0);
          break;
        case 2:
          fill(0,255,0);
          break;
        case 3:
          fill(255,0,0);
          break;
        case 4:
          fill(0,0,255);
          break;
        case 5:
          fill(253, 244, 0);
          break;
      }
      rect(i,j,lato,lato);
      jj++;
    }
    ii++;
  }
}
