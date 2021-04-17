import peasy.*;

color[] colori = {#FFFFFF, #FFFF00, #FF0000, #FFA500, #00FF00, #0000FF};

final int UPP = 0, DWN = 1, RGT = 2, LFT = 3, FRT = 4, BCK = 5;

PeasyCam cam;

int dim = 3;

settore[] cube = new settore[dim*dim*dim];

void setup() {
  size(920,700, P3D);
  cam = new PeasyCam(this, 400);
  
  int index = 0;
  
  for(int x = -1; x <= 1; x++) {
    for(int y = -1; y <= 1; y++) {
      for(int z = -1; z <= 1; z++) {
        float len = 50;
        
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x,y,z);
        
        cube[index] = new settore(matrix,x,y,z);
        index++;
      }
    }
  }
  
  cube[2].highlight = true;
  cube[0].highlight = true;
}



void turnZ(int index)  {
  for(int i = 0; i < cube.length; i++) {
    settore qb = cube[i];
    if(qb.z == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(HALF_PI);
      matrix.translate(qb.x, qb.y);
      
      qb.update(round(matrix.m02),round(matrix.m12),qb.z);
    }
  }
}

void turnY(int index)  {
  for(int i = 0; i < cube.length; i++) {
    settore qb = cube[i];
    if(qb.y == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(HALF_PI);
      matrix.translate(qb.x, qb.z);
      
      qb.update(round(matrix.m02),qb.y,round(matrix.m12));
    }
  }
}

void turnX(int index)  {
  for(int i = 0; i < cube.length; i++) {
    settore qb = cube[i];
    if(qb.x == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(HALF_PI);
      matrix.translate(qb.y, qb.z);
      
      qb.update(qb.x,round(matrix.m02),round(matrix.m12));
    }
  }
}

void keyPressed() {
  if(key == 'b') turnZ(-1);
  else if(key == 'f') turnZ(1);
  else if(key == 'u') turnY(-1);
  else if(key == 'd') turnY(1);
  else if(key == 'l') turnX(-1);
  else if(key == 'r') turnX(1);
}

void draw() {
  background(50);
  scale(50);
  for(int i = 0; i < cube.length; i++) {
    cube[i].disegna();
  }
  
}
