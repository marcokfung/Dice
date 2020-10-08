Die bill;
int sum = 0;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  sum = 0;
  background(51,51,51);
  for (int Ey = 50; Ey < 350; Ey += 50){
   for(int Ex = 50; Ex <= 350; Ex += 50){
       bill = new Die(Ex, Ey);
       bill.show();
   }
  }
  text("Total:", 250, 450);
   text(sum, 300, 450);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int num, myX, myY;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255,255,255);
    square(myX, myY, 50);
    roll();
    if (num == 6){
      for(int Sy = 30; Sy>=10; Sy-=10){
       for (int Sx = 10; Sx<=20; Sx+=10){
         ellipse(myX + Sx*1.5,myY + Sy*1.3,10,10);
       }
      }
      sum = sum + 6;
    }
    else if (num == 5){
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      sum = sum + 5;
    }
    else if (num == 4){
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      sum = sum + 4;
    }
    else if (num == 3){
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      sum = sum + 3;
    }
    else if (num == 2){
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      sum = sum + 2;
    }
    else if (num == 1){
      ellipse(myX + 25, myY + 25, 10, 10);
      sum = sum + 1;
    }
  }
}
