class CollisionChecker {
  boolean isColliding(Tile tile1, Tile tile2) {
    return tile1.position.equals(tile2.position);
  }

  boolean willCollide(Tile tile1, Tile tile2, Vector direction) {
    return tile2.position.equals(tile1.position.add(direction));
  }
}
