
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int rando = (int)(Math.random()*255);
int rMove = (int)(Math.random()*9);
int yMove = (int)(Math.random()*18)-9;
int vibrate = 0;
int bc = 1;
int q = 0; 



void setup()
{

  size(300,300);

  strokeWeight(2);
  
}

void draw()

{

q+=10;
if (q>255)
{
	q = 0;
}
  	
  

 background(bc);
stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));

while (endX < 400)
{
	vibrate++;
	if (vibrate>2)
	{
		vibrate-=2;
	}
	startY+=vibrate;
	

	endX = startX + (int)(Math.random()*9)+5;
	endY = startY + (int)(Math.random()*18)-9;	
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;	

		if (endX > 400)
			{
				startX = 0;
				startY = 150;
				endX = 0;
				endY = 150;
				
			}
				
		}
}

void mousePressed()
{
startX = 0;
startY = 150;
endX = 0;
endY = 150;
}

