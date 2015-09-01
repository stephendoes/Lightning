void setup()
{
  size(400,400);
  ray = new Lightning(0,150);
}
void draw()
{
	background(0);
	ray.show();

}
class Lightning 
{
	int startX,startY,endX,endY,colorR,colorG,colorB,xMove, yMove,strokeSize;
	Lightning(int x,int y)
	{	strokeSize = strokeS;
		colorR = (int)(Math.random()*255);
		colorG = (int)(Math.random()*255);
		colorB = (int)(Math.random()*255);
		xMove = (int)(Math.random()*10)+10;
		yMove = (int)(Math.random()*30)-15;
		startX = x;
		startY = y;
		endX = startX + rMove;	
		endY = startY + yMove;
		
	void show()
	{
		//void mousePressed()
		//{
		while (x < 400)
			{
		strokeWeight(strokeSize);
		stroke(coloR,colorG,colorB);
		line(startX,startY,endX,endY);

			//}
		}
	}	
}
