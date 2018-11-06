class Circle
{
  PVector position;
  float radius, speed;
  CircleController controller;
  CircleCollider collider;
  
  Circle(PVector position, float radius)
  {
    this.position = position;
    this.radius = radius;
    this.speed = 5f;
  }
  
  void update()
  {
    controller.update();
  }
  
  void render()
  {
    fill(255);
    noStroke();
    ellipse(position.x, position.y, radius * 2, radius * 2);
  }
}
