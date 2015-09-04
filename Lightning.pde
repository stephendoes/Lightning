
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int rando1 = (int)(Math.random()*200)+100;
int rando2 = (int)(Math.random()*100)+100;
int rando3 =  (int)(Math.random()*100);
int rMove = (int)(Math.random()*9);
int yMove = (int)(Math.random()*18)-9;
int vibrate = 0;
int bc = 1;
int q = 0; 
int sw = 1;



void setup()
{

 size(300,300);

}

void draw()

{

q+=2;
if (q>255)
{
	bc = 255;
	
}
if (q>260)
{
	bc = 0;
	q= 0;
}
 
  
background(bc);

sw++;
if (sw>5)
{
	sw--;
}

if  (sw < 1)
{
	sw ++;
}
 
strokeWeight(sw);


rando ++;
stroke(rando1,rando2,rando3);

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

