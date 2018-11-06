class CircleCollider
{
  Circle circle;
  
  CircleCollider(Circle circle)
  {
    this.circle = circle;
  }
  
  boolean isCollidingWith(CircleCollider collider)
  {
    Circle other = collider.circle;
    
    return PVector.dist(circle.position, other.position) < (circle.radius + other.radius);
  }
  
  void resolveCollision(CircleCollider collider)
  {
    Circle other = collider.circle;
    
    PVector displacement = PVector.sub(circle.position, other.position).normalize();
    float overlap = (circle.radius + other.radius) - PVector.dist(circle.position, other.position);
    displacement.mult(overlap);
    circle.position.add(displacement);
  }
}
