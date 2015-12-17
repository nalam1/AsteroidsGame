
SpaceShip s = new SpaceShip();//your variable declarations here
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
ArrayList <Bullet> bang = new ArrayList <Bullet>();
Star[] ss = new Star[100];
boolean w = false;
boolean a = false;
boolean d = false;
public void setup() 
{
  size(800,800);
  for(int i=0;i<ss.length;i++)
  {
    ss[i] = new Star();
  }
  for(int i=0;i<10;i++)
  {
    ast.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<ss.length;i++)
  {
    ss[i].show();
  }
  for(int i=0;i<ast.size();i++)
  {
    ast.get(i).show();
    ast.get(i).move();
    //if(dist((float)ast.get(i).getX()+20, (float)ast.get(i).getY()+20, (float)s.getX(), (float)s.getY())<20 || dist((float)ast.get(i).getX()-20, (float)ast.get(i).getY()-20, (float)s.getX(), (float)s.getY())<20 || dist((float)ast.get(i).getX()+20, (float)ast.get(i).getY()-20, (float)s.getX(), (float)s.getY())<20 || dist((float)ast.get(i).getX()-20, (float)ast.get(i).getY()+20, (float)s.getX(), (float)s.getY())<20)
    //{
    //  ast.remove(i);
    //}
  }
  for(int i=0;i<bang.size();i++)
  {
    bang.get(i).show();
    bang.get(i).move();
    if(bang.get(i).myCenterX<10 || bang.get(i).myCenterX>790 || bang.get(i).myCenterY<10 || bang.get(i).myCenterY>790)
    {
      bang.remove(i);
      break;
    }
    for(int j=0;j<ast.size();j++)
    {
      if(dist((float)ast.get(j).getX()+20, (float)ast.get(j).getY()+20, (float)bang.get(i).getX(), (float)bang.get(i).getY())<20 || dist((float)ast.get(j).getX()-20, (float)ast.get(j).getY()-20, (float)bang.get(i).getX(), (float)bang.get(i).getY())<20 || dist((float)ast.get(j).getX()+20, (float)ast.get(j).getY()-20, (float)bang.get(i).getX(), (float)bang.get(i).getY())<20 || dist((float)ast.get(j).getX()-20, (float)ast.get(j).getY()+20, (float)bang.get(i).getX(), (float)bang.get(i).getY())<20)
      {
        ast.remove(j);
        bang.remove(i);
        break;
      }
    }
  }
  s.show();
  s.move();
  if(w == true && a == true)
  {
    s.accelerate(.15);
    s.rotate(-7);
  }
  else if(w==true&&d==true)
  {
    s.accelerate(.15);
    s.rotate(7);
  }
  else if(w == true)
  {
    s.accelerate(.15
      );
  }
  else if(a == true)
  {
    s.rotate(-7);
  }
  else if(d == true)
  {
    s.rotate(7);
  }
}
class SpaceShip extends Floater  
{   
  public void setX(int x){myCenterX = x;}//your code here
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  SpaceShip()
  { 
    myColor = 255;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 12;
    yCorners[0] = 0;
    xCorners[1] = 5;
    yCorners[1] = 7;
    xCorners[2] = -7;
    yCorners[2] = 7;
    xCorners[3] = 0;
    yCorners[3] = 0;
    xCorners[4] = -7;
    yCorners[4] = -7;
    xCorners[5] = 5;
    yCorners[5] = -7;
    myCenterX = 400;
    myCenterY = 400;
    myPointDirection = 0;
  }
}
abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 

public void keyPressed()
{
  if(key=='j')//hyperspace
  {
    s.setX((int)(Math.random()*800));
    s.setY((int)(Math.random()*800));
    s.setPointDirection((int)(Math.random()*410));
    s.setDirectionX(0);
    s.setDirectionY(0);
  }
  else if(key =='a')
  {
    a = true;
  }
  else if(key =='d')
  {
    d = true; 
  } 
  else if(key =='w')
  {
    w = true;
  }
  if(key ==' ')
  {
    if(bang.size()<10000)
      bang.add(new Bullet(s));
  }
}
public void keyReleased()
{
  if(key=='a')
  {
    a = false;
  }
  else if(key=='d')
  {
    d = false;
  }
  else if(key=='w')
  {
    w = false;
  }
}
class Star
{
  int myX, myY;
  Star()
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  void show()
  {
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(myX,myY,5,5);
  }
}
class Asteroid extends Floater
{
  public void setX(int x){myCenterX = x;}//your code here
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  private double muns = (Math.random()*5-2);
  private int dums = (int)(Math.random()*4); 
  Asteroid()
  { 
    myDirectionX = (Math.random()*5-2);
    myDirectionY = (Math.random()*5-2);
    myColor = 139;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 12;
    yCorners[0] = 0;
    xCorners[1] = 5;
    yCorners[1] = 7;
    xCorners[2] = -7;
    yCorners[2] = 7;
    xCorners[3] = 0;
    yCorners[3] = 0;
    xCorners[4] = -7;
    yCorners[4] = -7;
    xCorners[5] = 5;
    yCorners[5] = -7;
    if(dums==0)
    {
      myCenterX = 1;
      myCenterY = (int)(Math.random()*799+1);
    }
    else if(dums==1)
    {
      myCenterX = (int)(Math.random()*799+1);
      myCenterY = 1;
    }
    else if(dums==2)
    {
      myCenterX = 799;
      myCenterY = (int)(Math.random()*799+1);
    }
    else if(dums==3)
    {
      myCenterX = (int)(Math.random()*799+1);
      myCenterY = 799;
    }
  }
  public void move ()
  {
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
    myPointDirection+=muns;  
    //wrap around screen    
    if(myCenterX >width)
    {
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }  
  }
}
class Bullet extends Floater
{
  public void setX(int x){myCenterX = x;}//your code here
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  public double dRadians =myPointDirection*(Math.PI/180);
  Bullet(SpaceShip theShip)
  {
    myCenterX = s.myCenterX;
    myCenterY = s.myCenterY;
    myPointDirection = s.myPointDirection;
    myColor = 255;
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + s.myDirectionX;
    myDirectionY = 5 * Math.sin(dRadians) + s.myDirectionY;
  }
  public void show()
  {
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    beginShape();         
    ellipse((float)myCenterX,(float)myCenterY,(float)10,(float)10);
    endShape(CLOSE);  
  }
}
