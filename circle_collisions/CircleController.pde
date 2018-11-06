class CircleController
{
  Circle circle;
  boolean up, down, left, right;
  
  CircleController(Circle circle)
  {
    this.circle = circle;
    up = false;
    down = false;
    left = false;
    right = false;
  }
  
  void update()
  {
    if(up)
    {
      circle.position.y -= circle.speed;
    }
    
    if(down)
    {
      circle.position.y += circle.speed;
    }
    
    if(left)
    {
      circle.position.x -= circle.speed;
    }
    
    if(right)
    {
      circle.position.x += circle.speed;
    }
  }
  
  void keyDown(int keyCode)
  {
    if(keyCode == UP)
    {
      up = true;
    }
    
    if(keyCode == DOWN)
    {
      down = true;
    }
    
    if(keyCode == LEFT)
    {
      left = true;
    }
    
    if(keyCode == RIGHT)
    {
      right = true;
    }
  }
  
  void keyUp(int key)
  {
    if(keyCode == UP)
    {
      up = false;
    }
    
    if(keyCode == DOWN)
    {
      down = false;
    }
    
    if(keyCode == LEFT)
    {
      left = false;
    }
    
    if(keyCode == RIGHT)
    {
      right = false;
    }
  }
}
