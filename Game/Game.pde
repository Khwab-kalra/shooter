Player player1, player2;
int aheight = 600,awidth = 600;
int window_width = int(awidth*(0.5)),window_height = int(aheight*(0.5));

void setup(){
  size(300,300);
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
  //this thing is for the red boundary
  fill(255,0,0);stroke(255,0,0);
  //float Width = awidth*player1.vision,Height = aheight*player1.vision;
  line(width-1,height-1,width-1,0);line(width-1,height-1,0,height-1);
  line(0,0,height-1,0);line(0,0,0,height-1);
}

void world(int transx,int transy){
  /*This function draw the white objects
    and return the array of restricted positions(the player can't walk through the boxes)
  */
  stroke(255);
  fill(255);
  rect(awidth*1/10-transx,aheight*1/5-transy,awidth*1/10,aheight*7/10);
  rect(awidth*1/5-transx,aheight*4/5-transy,awidth*2/5,aheight*1/10);
  rect(awidth*3/10-transx,aheight*1/10-transy,awidth*1/5,aheight*1/2);
  rect(awidth*1/2-transx,aheight*1/10-transy,awidth*3/10,aheight*1/10);
  rect(awidth*1/2-transx,aheight*1/2-transy,awidth*3/10,aheight*1/10);
  rect(awidth*7/10-transx,aheight*3/10-transy,awidth*1/10,aheight*1/10);
  rect(awidth*7/10-transx,aheight*7/10-transy,awidth*1/10,aheight*2/10);
  //boundaries of world
  stroke(255,0,0);
  fill(255,0,0);
  line(-transx,-transy,awidth-transx,-transy);
  line(-transx,-transy,-transx,awidth-transy);
  line(awidth-transx,-transy,awidth-transx,awidth-transy);
  line(-transx,aheight-transy,awidth-transx,awidth-transy);

}
