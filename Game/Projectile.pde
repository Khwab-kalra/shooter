class Projectile{
  public int x=50,y=30;
  public int block_x,block_y;
  public float dir=0;
  Projectile(int xx,int yy,int direction){
    this.x = xx;
    this.y = yy;
    this.dir = direction;
  }
  void move(){
    if(!this.hit()){
      this.x += 30*cos(dir);
      this.y -= 23*sin(dir);//minus because here +y points downward
    }
  }
  void show(){
    fill(0,255,0);stroke(0,255,0);
    circle(this.x,this.y,3);
  }
  boolean hit(){
    if(this.y < 0 ){return true;}
    if(this.x < 0){return true;}
    if(this.y > aheight){return true;}
    if(this.x > aheight){return true;}
    if(blocks[player1.block_y][player1.block_x] == 1){return true;}
    return false;
  }
  void update(){
    block_x = ((this.x)/int(awidth/10) )%10 ; 
    block_y = ((this.y)/int(aheight/10) )%10;
    /************mouse ko ghumane pe this.dir change hona chahiye vo kese krenge*************/
  }
}
