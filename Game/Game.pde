Player player1, player2;
int aheight = 600,awidth = 600;
int[][] blocks = {//this matrix define the world
    {0,0,0,0,0,0,0,0,0,0},
    {0,0,0,1,1,1,1,1,0,0},
    {0,1,0,1,1,0,0,0,0,0},
    {0,1,0,1,1,0,0,1,0,1},
    {0,1,0,1,1,0,0,0,0,0},
    {0,1,0,1,1,1,1,1,0,0},
    {0,1,0,0,0,0,0,0,0,0},
    {0,1,0,0,0,0,0,1,0,0},
    {0,1,1,1,1,1,0,1,0,0},
    {0,0,0,0,0,0,0,0,0,0},
  };
Projectile[] bullets;/*******this array type won't work so java wali ArrayList vgerah ka use kro******/

void setup(){
  size(300,300);//function don't allow variables as arguments);so adjust it according to vision factor
  player1 = new Player();
  player1 = new Player();
  background(0);
  frameRate(30);
  
  
}
void draw(){
  background(0);
  int transx = player1.x,transy = player1.y;
  world(transx,transy);
  //do things about player1 
  player1.show(awidth,aheight);player1.move(awidth,aheight);
  player1.update();
  i=0;
  while(player1.shoot()){
    bullets[i].x = player1.x
    bullets[i].y = player1.y
    bullets[i].dir = player1.dir
    if bullets[i].hit() {
        bullets[i] = NULL
    }
    i++;
  }

  /********Do a loop to show all the bullets and remove one from array if its hit() returns true***********/
  /******************Ek jab click kre tab player1.shoot() should be called howt to do that***************************/
  
  //this thing is for the red boundary
  fill(255,0,0);stroke(255,0,0);
  line(width-1,height-1,width-1,0);line(width-1,height-1,0,height-1);
  line(0,0,height-1,0);line(0,0,0,height-1);
}

void world(int transx,int transy){
  /*This function draw the white objects(blocks)
  */
  stroke(255);
  fill(255);
  for(int i=0;i!=10;i++){
    for(int j=0;j!=10;j++){
      if(blocks[j][i] == 1){
        rect(awidth*i/10 - transx, aheight*j/10 - transy, awidth/10, aheight/10);  
      }
    }  
  }
  //boundaries of world
  stroke(255,0,0);
  fill(255,0,0);
  line(-transx,-transy,awidth-transx,-transy);
  line(-transx,-transy,-transx,awidth-transy);
  line(awidth-transx,-transy,awidth-transx,awidth-transy);
  line(-transx,aheight-transy,awidth-transx,awidth-transy);

}
