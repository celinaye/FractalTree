private double fractionLength = .8; 
private int smallestBranch = 5; 
private double branchAngle =0.5;  
public void setup() 
{   
  size(820,550);    
  noLoop(); 
} 
public void draw() 
{   
  background(50);   
   stroke(150,100,100);
  strokeWeight(10);
  line(420,650-200,420,750-200); 
  drawBranches(420,650-200,125,3*Math.PI/2);
   drawBranches(420,650-200,125,3*Math.PI/2-50);
   drawBranches(420,650-200,125,3*Math.PI/2+50);
 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1=angle+branchAngle;
  double angle2=angle-branchAngle;
  branchLength*=fractionLength;
int endX1 = (int)(branchLength*Math.cos(angle1) + x);
int endY1 = (int)(branchLength*Math.sin(angle1) + y);
int endX2 = (int)(branchLength*Math.cos(angle2) + x);
int endY2 = (int)(branchLength*Math.sin(angle2) + y);

 if(branchLength<=20)
  {
   stroke((int)(Math.random()*100),175,100); 
    strokeWeight(.5);
  }
    else if(branchLength<=40)
    {
   stroke((int)(Math.random()*22),150,100); 
    strokeWeight(.5);
    }
  else
  {
   stroke(150,100,100);
    strokeWeight((int)((Math.random()*5)+2));
  }
line(x,y,endX1,endY1);
line(x,y,endX2,endY2);
if(branchLength>smallestBranch)
{
  drawBranches(endX1,endY1,branchLength-fractionLength,angle1);
  drawBranches(endX2,endY2,branchLength-fractionLength,angle2);
}
}  
