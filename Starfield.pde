Particle [] stars;
Particle oddStar;
public void setup()
{
	size(600, 600);
	stars = new Particle[100];
	for (int i = 0; i < stars.length; ++i) {
		stars[i] = new NormalParticle();
	}
	oddStar = new OddballParticle();

}
public void draw()
{
	background(0);
	for (int i = 0; i < stars.length; ++i) {
		stars[i].show();
		stars[i].move();
	}
	oddStar.show();
	oddStar.move();
}

//Particles
class NormalParticle implements Particle
{
 double dX, dY, dSpd, dAng;
 NormalParticle()
 {
 	dX = width/2;
 	dY = height/2;
 	dSpd = (int)(Math.random()*4)+1;
 	dAng = (int)(Math.random()*70)+Math.PI;
 }

public void move()
 {
 	dX += cos((int)dAng)*dSpd;
 	dY += sin((int)dAng)*dSpd;

 	if ((dX > width || dX < 0) || (dY > height || dY < 0)) {
 	 	dX = width/2;
 	 	dY = height/2;
 	}

 }

public void show()
 {
 	fill(255);
 	noStroke();
 	ellipse((int)dX, (int)dY, 2, 2);
 }
 
}

interface Particle
{
    public void show();
    public void move();
}

class OddballParticle implements Particle
{
 double dX, dY, dSpd, dAng;
 OddballParticle()
 {
 	dX = width/2;
 	dY = height/2;
 	dSpd = (int)(Math.random()*4)+1;
 	dAng = (int)(Math.random()*70)+Math.PI;
 }

public void move()
 {
 	dX += cos((int)dAng)*dSpd;
 	dY += sin((int)dAng)*dSpd;

 	if ((dX > width || dX < 0) || (dY > height || dY < 0)) {
 	 	dX = width/2;
 	 	dY = height/2;
 	 	dSpd = (int)(Math.random()*4)+1;
 		dAng = (int)(Math.random()*70)+Math.PI;
 	}

 }

public void show()
 {
 	fill(255,0,0);
 	noStroke();
 	ellipse((int)dX, (int)dY, 6, 6);
 }

}
class JumboParticle
{
public void show()
 {

 }
}

