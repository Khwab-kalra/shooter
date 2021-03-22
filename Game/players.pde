class Player{
        public int x = 0;
        public int y = 0;
        public float visionFactor = 0.5;
        public float vision = visionFactor;
        public int size = 5;
  Player(){
        x = 0;
        y = 0;
        visionFactor = 0.5;
        vision = visionFactor;
        size = 5;
    }
    void move(int awidth,int aheight){
      if(keyPressed == true){
        if(keyCode == UP ){this.y -= 10;}
        else if(keyCode == DOWN ){this.y += 10;}
        else if(keyCode == LEFT){this.x -= 10;}
        else if(keyCode == RIGHT){this.x += 10;}
        //if crossing boundries push it back
        if(this.y < -aheight*this.visionFactor/2 ){this.y +=20;}
        if(this.x < -awidth*this.visionFactor/2){this.x += 20;}
        if(this.y > aheight-aheight*this.visionFactor/2 -this.size){this.y -= 20;}
        if(this.x > aheight-awidth*this.visionFactor/2-this.size){this.x -= 20;}
      }
    }
    void show(int awidth,int aheight){//take the canvas width and height as parameters
      fill(0,255,255);stroke(0,255,255);
      rect((this.visionFactor)*awidth/2,(this.visionFactor)*aheight/2,this.size,this.size);
    }
}
