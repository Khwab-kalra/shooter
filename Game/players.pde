class Player{
        //these x and y are the coordinates of the origin in offestted coordinate system
        public int x;
        public int y;
        public float dir;//as an angle from +x direction (counter clockwise)
        public float visionFactor;
        public int size;
        //since we always show player rect at (this.visionFactor)*awidth/2,(this.visionFactor)*aheight/2
        //these are the absolute coordinates of player
        public int atx = this.x + int(awidth*this.visionFactor/2);
        public int aty = this.y + int(aheight*this.visionFactor/2);
        int velocityx=0,velocityy=0;
        int block_x,block_y;
  Player(){
        x = 10;
        y = -10;
        visionFactor = 0.5;
        size = 5;
    }
    void move(int awidth,int aheight){
      int oldx = this.x,oldy = this.y;
      if(keyPressed == true && blocks[player1.block_y][player1.block_x] == 0){
        if(keyCode == UP ){this.y -= 10;}
        else if(keyCode == DOWN ){this.y += 10;}
        else if(keyCode == LEFT){this.x -= 10;}
        else if(keyCode == RIGHT){this.x += 10;}
        atx = this.x + int(awidth*this.visionFactor/2);
        aty = this.y + int(aheight*this.visionFactor/2);
        //if crossing boundries push it back
        if(this.aty < 0 ){this.y +=20;}
        if(this.atx < 0){this.x += 20;}
        if(this.aty > aheight -this.size){this.y -= 20;}
        if(this.atx > aheight-this.size){this.x -= 20;}
        //true value means velocity in +x or +y direction
        if(this.x != oldx){velocityx = (this.x-oldx)>0 ? 1:-1;}
        else{velocityx =0;}
        if(this.y != oldy){velocityy = (this.y-oldy)>0 ? 1:-1;}
        else{velocityy =0;}
      }
        //if pushes into blocks
        if(blocks[player1.block_y][player1.block_x] == 1){
          println("blocakge",player1.block_x,player1.block_y,blocks[player1.block_x][player1.block_y]);
          if(player1.velocityx == 1){player1.x -= 10;}
          else if(player1.velocityx == -1){player1.x += 10-player1.size;}
          if(player1.velocityy == 1){player1.y -= 10;}
          else if(player1.velocityy == -1){player1.y += 10-player1.size;}
    
        }
        
      
    }
    void show(int awidth,int aheight){//take the canvas width and height as parameters
      fill(0,255,255);stroke(0,255,255);
      rect((this.visionFactor)*awidth/2,(this.visionFactor)*aheight/2,this.size,this.size);
    }
    void update(){//these things needs to be updated every frame regardless of whateve
      atx = this.x + int(awidth*this.visionFactor/2);
      aty = this.y + int(aheight*this.visionFactor/2);
      block_x = ((this.atx)/int(awidth/10) )%10 ; 
      block_y = ((this.aty)/int(aheight/10) )%10;
    }
    void shoot(){
      //Projectile bult = new Projectile(this);
      /*********function to append bult to bullets array, defined in Game.pde**************/
    } 
    
}
