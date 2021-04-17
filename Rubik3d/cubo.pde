class settore {
   PMatrix3D matrix;
   int x = 0; 
   int y = 0;
   int z = 0;
   boolean highlight = false;
   
   settore(PMatrix3D m, int x, int y, int z) {
     matrix = m;
     this.x = x;
     this.y = y;
     this.z = z;
   }
   
   void update(int x, int y, int z) {
     matrix.reset();
     matrix.translate(x,y,z);
     this.x = x;
     this.y = y;
     this.z = z;
   }
   
   void disegna() {
      fill(255);
      if(highlight) fill(0);
      
      stroke(0);
      strokeWeight(0.1);
      pushMatrix();
      
      applyMatrix(matrix);
      
      box(1);
      
      
      //translate(pos.x, pos.y, pos.z);
      
      /*beginShape(QUADS);
      float r = lato /2;
      
      fill(colori[BCK]);
      vertex(-r,-r,-r);
      vertex(r,-r,-r);
      vertex(r,r,-r);
      vertex(-r,r,-r);
      
      fill(colori[FRT]);
      vertex(-r,-r,r);
      vertex(r,-r,r);
      vertex(r,r,r);
      vertex(-r,r,r);
      
      fill(colori[DWN]);
      vertex(-r,-r,-r);
      vertex(-r,r,-r);
      vertex(-r,r,r);
      vertex(-r,-r,r);
      
      fill(colori[UPP]);
      vertex(r,-r,-r);
      vertex(r,r,-r);
      vertex(r,r,r);
      vertex(r,-r,r);
      
      fill(colori[LFT]);
      vertex(-r,-r,-r);
      vertex(r,-r,-r);
      vertex(r,-r,r);
      vertex(-r,-r,r);
      
      fill(colori[RGT]);
      vertex(-r,r,-r);
      vertex(r,r,-r);
      vertex(r,r,r);
      vertex(-r,r,r);
      
      
      endShape();
      */
      popMatrix();
   }
}
