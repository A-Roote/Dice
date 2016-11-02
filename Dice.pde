
Die bob;
void setup()
{
  
  noLoop();
  size(500, 500);
  background(#8694AA);
}
void draw()
{
   
  for (int i = 50; i < 500; i += 50)
  {
    for (int j = 50; j < 500; j += 50)
    {
         bob = new Die(i, j);
       bob.show();
      bob.roll();
      
    }
  }
  
  
  
}
void mousePressed()
{
  
  redraw();
  
}
class Die //models one single dice cube
{
  int myX, myY, roll;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll = ((int)(Math.random() * 6) + 1);
  }
  
  void roll()
  {
    if (roll == 1)
    {
      
      fill(0);
      ellipse(myX + 25,myY + 25,10,10);
    }
    else if (roll == 2)
    {
       
       fill(0);
       ellipse(myX + 15,myY + 35,10,10);
       ellipse(myX + 35,myY + 15,10,10);
    }
    else if (roll == 3)
    {
      
      fill(0);
      ellipse(myX + 15,myY + 35,10,10);
      ellipse(myX + 35,myY + 15,10,10);
      ellipse(myX + 25,myY + 25,10,10);
    }
    else if (roll == 4)
    {
      
      fill(0);
      ellipse(myX + 15,myY + 35,10,10);
      ellipse(myX + 35,myY + 15,10,10);
      ellipse(myX + 35,myY + 35,10,10);
      ellipse(myX + 15,myY + 15,10,10);
    }
    else if (roll == 5)
    {
      
      fill(0);
      ellipse(myX + 15,myY + 35,10,10);
      ellipse(myX + 35,myY + 15,10,10);
      ellipse(myX + 35,myY + 35,10,10);
      ellipse(myX + 15,myY + 15,10,10);
      ellipse(myX + 25,myY + 25,10,10);
    }
    else if (roll == 6)
    {
      
      fill(0);
      ellipse(myX + 15,myY + 35,10,10);
      ellipse(myX + 35,myY + 15,10,10);
      ellipse(myX + 35,myY + 35,10,10);
      ellipse(myX + 15,myY + 15,10,10); 
      ellipse(myX + 15,myY + 25,10,10);
      ellipse(myX + 35,myY + 25,10,10);
    }
  }
  void show()
  {
  
      fill(255);
      rect(myX, myY, 50, 50);
    
      
  }
}

