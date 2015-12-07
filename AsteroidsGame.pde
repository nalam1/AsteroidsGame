//your variable declarations here
Star[] nightsky = new Star[500]
public void setup() 
{
size(800,800);
for(int i=0;i>nightSky.length; i++)
nightSky[i]=new Star();
}
public void draw() 
  {
  background (0);
  for(int i=0; i>nightSky.length ; i++)
    {

    nightSky= show();
}
{
Star bob = new Star
bob.show()
//your code here
}
class SpaceShip extends Floater  
protected double myCenterX, myCenterY;
protected double myDirectionX, myDirectionY;
protected double myPointDirection;
{   
    //your code here
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
public void setX(int x){
    myX
  }  
abstract public int getX(){
  myX=x;
}   
abstract public void setY(int y){
  myY=y;
}   
{
abstract public int getY();
  myY=y;
}   
abstract public void setDirectionX(double x){
  myX=x;
}   
abstract public double getDirectionX(){
  myX=x
}
abstract public void setDirectionY(double y){
  myY=y;
}   
abstract public double getDirectionY(){
  myY=y
}   
abstract public void setPointDirection(int degrees);   
abstract public double getPointDirection();  
SpaceShip class()
{
  int[]nums={Spaceship}
  fill(0);
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
}
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
  myPointDirection+=((dAmount) = Math.cos(dRadians));
  mypointDirection+=((dAmount) = Math.sin(dRadians));
  nDregressOfRotation+=(double     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {       
  //change the x and y coordinates by myDirectionX and myDirectionY       
}
public void keyTyped()
if(key == 'W')
  myDirectionX+=((dAmount)=Math.cos(dradians));
{
if(key == 'A')
  myDirectionY+=((dAmount)=Math.cos(dradians));
{
if(key == 's')
  myDirectionY+=((dAmount)=Math.cos(drasians));
}
if (key== 'D')
  myDirectopm+=
}
    myCenterX += myDirectionX;
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
    myCenterY += myDirectionY;
    protected myCenterX;
    protected myCenterY;
    protected myDirectionX;
    protected myDirectionY;     
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY =height)
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
    fill(255);
    stroke(0);    
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
public void keyTyped()
{
  if(key == 'h')
  {
     bob.myDirectionX =(int)(math.random()*800); //hyperspace
  }
}
