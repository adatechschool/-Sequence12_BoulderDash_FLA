class CollisionChecker {
  CollisionChecker () {}
     
  boolean isColliding(Wall wall, Player player) {
    if ((wall.position.x == player.position.x) && (wall.position.y == player.position.y)){ 
      return true;
    } 
    else {
      return false;
    }
  }
}
