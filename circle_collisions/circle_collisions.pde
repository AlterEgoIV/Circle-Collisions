Circle circle1, circle2;
color c;

Circle createCircle(PVector position, float radius)
{
  Circle circle = new Circle(position, radius);
  
  circle.controller = new CircleController(circle);
  circle.collider = new CircleCollider(circle);
  
  return circle;
}
  
void setup()
{
  size(800, 600);
  
  circle1 = createCircle(new PVector(200, 200), 50f);
  circle2 = createCircle(new PVector(400, 200), 50f);
  c = color(0);
}

void draw()
{
  background(c);
  
  circle1.update();
  
  if(circle1.collider.isCollidingWith(circle2.collider))
  {
    c = color(0, 255, 0);
    circle1.collider.resolveCollision(circle2.collider);
  }
  else
  {
    c = color(0);
  }
  
  circle1.render();
  circle2.render();
}

void keyPressed()
{
  circle1.controller.keyDown(keyCode);
}

void keyReleased()
{
  circle1.controller.keyUp(keyCode);
}
